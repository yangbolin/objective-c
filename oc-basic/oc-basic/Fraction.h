//
//  Fraction.h
//  oc-basic
//
//  Created by yangbolin on 11/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/NSObject.h>

#ifndef Fraction_h
#define Fraction_h

@interface Fraction : NSObject
{
    int numerator;
    int denominator;
}

-(Fraction*) initWithNumerator:(int) n denomiator:(int)d;
-(void) print;
-(void) setNumerator:(int)n;
-(void) setDenominator:(int)d;
-(void) setNumerator:(int)n andDenominator:(int)d andMessage:(NSString*)msg;

@end


#endif /* Fraction_h */
