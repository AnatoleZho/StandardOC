//
//  SOPerson.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/20.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "SOPerson.h"

@implementation SOPerson

- (void)setName:(NSString *)name {
    _name = [name copy];
}

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age {
    self = [super init];
    if (self) {
        _name = [name copy];
        _age = age;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    // 浅拷贝
//    return self;
    // 深拷贝
    SOPerson *person = [[[self class] allocWithZone:zone] initWithName:_name age:_age];
    return person;
}

- (id)mutableCopyWithZone:(NSZone *)zone {

    SOPerson *person = [[[self class] allocWithZone:zone] init];
    person.name = [_name mutableCopy]; // self 指的是被拷贝的对象
    person.age = self.age;
    return person;
}

@end
