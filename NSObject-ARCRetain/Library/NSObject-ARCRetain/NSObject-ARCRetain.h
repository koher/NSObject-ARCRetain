#import <Foundation/Foundation.h>

@interface NSObject (ARCRetain)

- (instancetype)retainInARC;
- (instancetype)releaseInARC;

- (NSUInteger)retainCountInARC;

@end
