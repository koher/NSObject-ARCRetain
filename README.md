NSObject-ARCRetain
==================

A library to call `retain`, `release` and `retainCount` manually in the ARC mode especially for debugging.

##How to Use

1. Add the NSObject-ARCRetain/Library directory to your Xcode project
2. Add the path to the directory to "Header Search Path" in "Build Setting"
3. Add the "-ObjC" linker flag to "Other Linker Flags" in "Build Settings" 
4. Import the library and use it like the following sample.

##Sample code

```objectivec
#import <NSObject-ARCRetain/NSObject-ARCRetain.h>

...
{
    NSObject *object = [[NSObject alloc] init];

    NSLog(@"%ld", object.retainCountInARC); // 1

    [object retainInARC];

    NSLog(@"%ld", object.retainCountInARC); // 2

    [object releaseInARC];
    
    NSLog(@"%ld", object.retainCountInARC); // 1
}
```
