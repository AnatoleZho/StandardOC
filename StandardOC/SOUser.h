//
//  SOUser.h
//  StandardOC
//
//  Created by EastElsoft on 2018/3/20.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, SOSex) {
    SOSexMan,
    SOSexWoman,
    SOSexUnknow
};

@interface SOUser : NSObject

@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, assign) NSUInteger age;
@property (nonatomic, readwrite, assign) SOSex sex;

- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age sex:(SOSex)sex;
- (instancetype)initWithName:(NSString *)name age:(NSUInteger)age;
+ (instancetype)userWithName:(NSString *)name age:(NSUInteger)age sex:(SOSex)sex;

// 正确，使用"and"来表示两个相对独立的操作
- (BOOL)openFile:(NSString *)filePath withApplication:(NSString *)appName andDeativate:(BOOL)flog;
@end

