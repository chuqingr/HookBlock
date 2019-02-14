//
//  YSHViewController.m
//  HookBlock
//
//  Created by chuqingr on 02/14/2019.
//  Copyright (c) 2019 chuqingr. All rights reserved.
//

#import "YSHViewController.h"
#import <CTBlockDescription.h>

@interface YSHViewController ()

@end

@implementation YSHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
