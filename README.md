# HookBlock

[![CI Status](https://img.shields.io/travis/chuqingr/HookBlock.svg?style=flat)](https://travis-ci.org/chuqingr/HookBlock)
[![Version](https://img.shields.io/cocoapods/v/HookBlock.svg?style=flat)](https://cocoapods.org/pods/HookBlock)
[![License](https://img.shields.io/cocoapods/l/HookBlock.svg?style=flat)](https://cocoapods.org/pods/HookBlock)
[![Platform](https://img.shields.io/cocoapods/p/HookBlock.svg?style=flat)](https://cocoapods.org/pods/HookBlock)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Instructions
> 照搬 https://github.com/ebf/CTObjectiveCRuntimeAdditions ，方便使用，弄了个pods.

## Installation

HookBlock is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HookBlock'
```
## Use
```ObjC
#import <CTBlockDescription.h>


// a test block.
BOOL(^testBlock)(BOOL animated, id object,NSURLRequest *str,int i) = ^BOOL(BOOL animated, id object,NSURLRequest *req,int i) {
	return YES;
};

// allocating a block description
CTBlockDescription *blockDescription = [[CTBlockDescription alloc] initWithBlock:testBlock];

NSMethodSignature *methodSignature = blockDescription.blockSignature;

for (int i = 0; i < methodSignature.numberOfArguments; i ++) {
	const char *argu = [methodSignature getArgumentTypeAtIndex:i];
	NSLog(@"第%d个参数是:%s",i,argu);
}
    
2019-02-14 15:19:56.654417+0800 HookBlock_Example[42387:1059962] 第0个参数是:@?
2019-02-14 15:19:56.654667+0800 HookBlock_Example[42387:1059962] 第1个参数是:B
2019-02-14 15:19:56.654805+0800 HookBlock_Example[42387:1059962] 第2个参数是:@
2019-02-14 15:19:56.654930+0800 HookBlock_Example[42387:1059962] 第3个参数是:@"NSURLRequest"
2019-02-14 15:19:56.655052+0800 HookBlock_Example[42387:1059962] 第4个参数是:i
```
## Author

chuqingr, chuqingr@icloud.com

## License

HookBlock is available under the MIT license. See the LICENSE file for more info.
