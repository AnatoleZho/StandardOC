//
//  SOPeople.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/21.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "SOPeople.h"

@interface SOPeople ()
{
    NSString *_pName;// 如果成员已经存在了就不再生成了.
}
@end

@implementation SOPeople
//@synthesize name; //  还会生成一个名称为foo的成员变量，也就是说：如果没有指定成员变量的名称会自动生成一个属性同名的成员变量,
//@synthesize name = _pName; //将生成的实例变量命名为 _pName，而不再使用默认的名字,一般情况下无需修改
//@synthesize name = _name;//如果是 @synthesize name = _name; 就不会生成成员变量了.

- (NSString *)peopleName:(SOPeople *)people {
    return _pName;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _name = @"iOS 工程师";
    }
    return self;
}

/*
 什么情况下不会auto synthesis（自动合成）
 1. 同时重写 setter 和 getter 方法时
 2. 重写只读属性的 getter 方法时
 3. 使用 @dynamic 时
    ///@dynamic 告诉编译器：属性的 setter 与 getter 方法由用户自己实现，不自动生成
    ///假如一个属性被声明为 @dynamic var，然后你没有提供 @setter方法和 @getter 方法，编译的时候没问题，但是当程序运行到 instance.var = someVar，由于缺 setter 方法会导致程序崩溃
 4. 在 @protocol 中定义的所用属性
 5. 在 category 中定义的所有属性
 6. 重载属性
    /// 当你在子类中重载了父类中的属性，你必须 使用 @synthesize 来手动合成ivar。
 */
- (NSString *)name {
    return _name;
}
//
//- (void)setName:(NSString *)name {
//    _name = name;
//}

@end
