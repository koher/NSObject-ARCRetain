#import <XCTest/XCTest.h>
#import <NSObject-ARCRetain/NSObject-ARCRetain.h>

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testRetainReleaseInARC
{
	NSObject *object = [[NSObject alloc] init];
	
	XCTAssertEqual(object.retainCountInARC, 1);
	
	[object retainInARC];
	
	XCTAssertEqual(object.retainCountInARC, 2);
	
	[object releaseInARC];
	
	XCTAssertEqual(object.retainCountInARC, 1);
}

@end
