
//
//  SuperPeople.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/21.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "SuperPeople.h"

@implementation SuperPeople

- (instancetype)init {
    self = [super init];
    if (self) {
        self.lastName = @"";
        
    }
    return self;
}

- (void)setLastName:(NSString *)lastName {
    _lastName = @"炎黄";
    NSLog(@"🔴 类名与类方法：%s (在第%d行), 描述: %@", __PRETTY_FUNCTION__, __LINE__, @"根本不会调用该方法");
}

@end
