//
//  SOPeopleDynamic.h
//  StandardOC
//
//  Created by EastElsoft on 2018/3/21.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SOPeopleDynamic : NSObject

{
    // 1.
    @private
    __strong NSString *_name; // 私有变量
    __strong NSString *_author;
}
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *author;

@end
