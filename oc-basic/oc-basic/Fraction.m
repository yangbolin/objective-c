//
//  Fraction.m
//  oc-basic
//
//  Created by yangbolin on 11/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@implementation Fraction

-(Fraction*) initWithNumerator:(int)n denomiator:(int)d {
    self = [super init];
    if(self) {
        [self setNumerator:n andDenominator:d andMessage:@"XIAOJIN"];
    }
    return self;
}

-(void) print {
    printf("numerator=%d denomiator=%d\n", numerator, denominator);
}

-(void) setDenominator:(int)d {
    denominator = d;
}

// 多参数 label1:(类型)var1 label2:(类型)var2 label3:(类型)var3
-(void) setNumerator:(int)n andDenominator:(int)d andMessage:(NSString*)msg {
    numerator = n;
    denominator = d;
    // 使用printf输出一个NSString
    printf("%s\n", [msg UTF8String]);
}

-(void) setNumerator:(int)n {
    numerator = n;
}

@end
