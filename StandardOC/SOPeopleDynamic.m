//
//  SOPeopleDynamic.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/21.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "SOPeopleDynamic.h"

@interface SOPeopleDynamic ()

{
    // 2. 利用消息转发机制来实现 @dynamic 的 setter 和 getter 方法
    @private
    NSMutableDictionary *_propertiesDict;
}

@end

@implementation SOPeopleDynamic
// 1. 2.
@dynamic name;
@dynamic author;

// 1.
- (NSString *)name {
    if (nil == _name) {
        _name = @"❤️❤️❤️❤️Name";
    }
    return _name;
}
// 1.
- (void)setName:(NSString *)name {
    _name = name;
    NSLog(@"_name address: %p", _name);
}
// 1.
- (NSString *)author {
    if (nil == _author) {
        _author = @"❤️❤️❤️Author";
    }
    return _author;
}
// 1.
- (void)setAuthor:(NSString *)author {
    _author = author;
    NSLog(@"_author address: %p", _author);
}

// 2.
- (instancetype)init
{
    self = [super init];
    if (self) {
        _propertiesDict = [NSMutableDictionary dictionary];
    }
    return self;
}

// 2.
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSString *sel = NSStringFromSelector(aSelector);
    if ([sel rangeOfString:@"set"].location == 0) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:@"];
    } else {
        return [NSMethodSignature signatureWithObjCTypes:"@:@"];
    }
}
// 2.
- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSString *key = NSStringFromSelector([anInvocation selector]);
    if ([key rangeOfString:@"set"].location == 0) {
        key = [key substringWithRange:NSMakeRange(3, [key length] - 4)].lowercaseString;
        NSString *obj;
        [anInvocation getArgument:&obj atIndex:2];
        [_propertiesDict setObject:obj forKey:key];
    } else {
        NSString *obj = [_propertiesDict objectForKey:key];
        [anInvocation setReturnValue:&obj];
    }
}



@end
