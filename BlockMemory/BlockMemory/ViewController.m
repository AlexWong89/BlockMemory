//
//  ViewController.m
//  BlockMemory
//
//  Created by AlexWong on 2019/7/11.
//  Copyright © 2019年 AlexWong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int b = 1;
    __block int c = 1;
    void(^test1)() = ^() {
        int a = 1;
        int b = 2;
        NSLog(@"%d",a+b);
    };
    NSLog(@"%@",test1);
    test1();
    
    void(^test2)(int) = ^(int num) {
        int a = 1;
        int b = 2;
        NSLog(@"%d",a+b+num);
    };
    NSLog(@"%@",test2);
    test2(b);
    
    void(^test3)(void) = ^() {
        int a = 1;
        int b = 2;
        NSLog(@"%d",a+b+c);
    };
    test3();
    NSLog(@"%@",test3);
    
    __weak void(^test4)(void) = ^() {
        int a = 1;
        int b = 2;
        NSLog(@"%d",a+b);
    };
    test4();
    NSLog(@"%@",test4);
}



@end
