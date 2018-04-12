//
//  SOPeople.h
//  StandardOC
//
//  Created by EastElsoft on 2018/3/21.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SOPeople : NSObject

@property (nonatomic, readwrite, copy) NSString *name;

- (NSString *)peopleName: (SOPeople *)people;

@end
