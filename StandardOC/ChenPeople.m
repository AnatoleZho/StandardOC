
//
//  ChenPeople.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/21.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "ChenPeople.h"

@implementation ChenPeople

@synthesize lastName = _lastName;

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"🔴 类名与方法：%s (在第%d行)，描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([self class]));
        NSLog(@"🔴 类名与方法：%s (在第%d行)，描述：%@", __PRETTY_FUNCTION__, __LINE__, NSStringFromClass([super class]));

    }
    return self;
}

- (void)setLastName:(NSString *)lastName {
    _lastName = @"陈";
    NSLog(@"🔴 类名和方法：%s (在第%d行)，描述： %@", __PRETTY_FUNCTION__, __LINE__, @"会调用这个方法，想想为什么");
}


@end
