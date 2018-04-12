//
//  SOPerson.h
//  StandardOC
//
//  Created by EastElsoft on 2018/3/20.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SOPerson : NSObject<NSCopying, NSMutableCopying>

// 使用 strong 和 copy 是有区别的；
@property (nonatomic, readwrite, copy) NSString *name;
@property (nonatomic, readwrite, assign) NSUInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age;

@end
