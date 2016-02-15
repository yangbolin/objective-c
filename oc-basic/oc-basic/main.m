//
//  main.m
//  oc-basic
//
//  Created by yangbolin on 11/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>
#import "Fraction.h"
#import "FractionMath.h"
#import "FractionB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    printf("Hello world\n");
    
    // 类似JAVA中的Object
    id object;
    
    // 创建对象，分配内存空间
    Fraction* frac = [[Fraction alloc] init];
    [frac setNumerator:1];
    [frac setDenominator:2];
    [frac print];
    
    object = frac;
    [object print];
    
    //  多个参数的方法调用
    [frac setNumerator:1 andDenominator:2 andMessage:@"Hello NUAA"];
    
    // 在分配内存空间的同时调用构造函数
    Fraction* frac2 = [[Fraction alloc] initWithNumerator:3 denomiator:4];
    [frac2 print];
    
    // category
    [frac2 add:1 second:2];
    
    return 0;
}
