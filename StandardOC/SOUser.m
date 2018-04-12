//
//  SOUser.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/20.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "SOUser.h"

@implementation SOUser

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age sex:(SOSex)sex {
    if (self = [super init]) {
        _name = [name copy];
        _age = age;
        _sex = sex;
    }
    return self;
}

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age {
    return [self initWithName:name age:age sex:SOSexUnknow];
}

+ (instancetype)userWithName:(NSString *)name age:(NSUInteger)age sex:(SOSex)sex {
    return [[SOUser alloc] initWithName:name age:age sex:sex];
}

- (BOOL)openFile:(NSString *)filePath withApplication:(NSString *)appName andDeativate:(BOOL)flog {
    BOOL result = YES;
    return result;
}

@end
