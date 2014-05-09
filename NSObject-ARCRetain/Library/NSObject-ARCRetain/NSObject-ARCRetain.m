#import "NSObject-ARCRetain.h"

#import <objc/message.h>

@implementation NSObject (ARCRetain)

- (instancetype)retainInARC {
	return objc_msgSend(self, NSSelectorFromString(@"retain"));
}

- (instancetype)releaseInARC {
	return objc_msgSend(self, NSSelectorFromString(@"release"));
}

- (NSUInteger)retainCountInARC {
	NSUInteger retainCount;
	
	SEL retainCountSelector = NSSelectorFromString(@"retainCount");
	
	NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[[NSObject class] methodSignatureForSelector:retainCountSelector]];
	[invocation setTarget:self];
	[invocation setSelector:retainCountSelector];
	[invocation invoke];
	[invocation getReturnValue:&retainCount];
	
	return retainCount;
}

@end
