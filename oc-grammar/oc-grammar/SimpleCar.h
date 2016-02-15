//
//  SimpleCar.h
//  oc-grammar
//
//  Created by yangbolin on 8/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#ifndef SimpleCar_h
#define SimpleCar_h

#import <Cocoa/Cocoa.h>

@interface SimpleCar : NSObject {
    NSString* make;  //牌子
    NSString* model; //型号
    NSNumber* vin; //汽车识别码
}

// set methods
- (void) setVin:(NSNumber*)newVin;
- (void) setMake:(NSString*)newMake;
- (void) setModel:(NSString*)newModel;

// get methods
- (NSString*) getMake;
- (NSString*) getModel;
- (NSNumber*) getVin;

@end


#endif /* SimpleCar_h */
