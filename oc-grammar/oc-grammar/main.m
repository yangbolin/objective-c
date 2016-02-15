//
//  main.m
//  oc-grammar
//
//  Created by yangbolin on 8/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleCar.h"

int main(int argc, const char * argv[]) {
    
    // 声明一个指针
    NSString *testString;
    // 分配内存空间
    testString = [[NSString alloc] init];
    
    testString = @"Here's a test string in testString";
    NSLog(@"testString:%@", testString);
    
    // 对象指针的声明
    SimpleCar *myCar = [[SimpleCar alloc] init];
    NSNumber *newVin = [NSNumber numberWithInt:12345];
    
    // 方法调用
    [myCar setVin:newVin];
    [myCar setMake:@"test1234"];
    [myCar setModel:@"0000000"];
    
    NSLog(@"The car is %@ %@ %@", [myCar getVin],[myCar getMake],[myCar getModel]);
    return 0;
}
