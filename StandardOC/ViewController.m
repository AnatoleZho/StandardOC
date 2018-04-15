//
//  ViewController.m
//  StandardOC
//
//  Created by EastElsoft on 2018/3/20.
//  Copyright © 2018年 AnatoleZho. All rights reserved.
//

#import "ViewController.h"
#import "SOPerson.h"
#import "SOPeople.h"
#import "SOPeopleDynamic.h"
#import "ChenPeople.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableString *name = [[NSMutableString alloc] initWithString:@"Jack"];
    NSLog(@"name===%p", name);
    SOPerson *person = [[SOPerson alloc] init];
    person.name = name;
    person.age = 11;
    NSLog(@"person===%p--%@--%p", person, person.name, person.name);

    SOPerson *copyPerson = [person copy];
    NSLog(@"copyPerson===%p--%@--%p", copyPerson, copyPerson.name, copyPerson.name);

    SOPerson *mutableCopyPerson = [person mutableCopy];
    [name appendString:@"Jobs"];
    NSLog(@"person===%p--%@--%p", person, person.name, person.name);
    NSLog(@"copyPerson===%p--%@--%p", copyPerson, copyPerson.name, copyPerson.name);
    NSLog(@"mutableCopyPerson===%p--%@--%p", mutableCopyPerson, mutableCopyPerson.name, mutableCopyPerson.name);
    
    
    SOPeople *people = [[SOPeople alloc] init];
    people.name = @"SF";
    NSLog(@"%@", people.name);
    
    SOPeopleDynamic *dynamic = [[SOPeopleDynamic alloc] init];
    dynamic.name = @"hahhha";
    NSLog(@"%@",dynamic.name);
    
    ChenPeople *chen = [[ChenPeople alloc] init];
    chen.lastName = @"";
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
