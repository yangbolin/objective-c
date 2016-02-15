//
//  SimpleCar.m
//  oc-grammar
//
//  Created by yangbolin on 8/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import "SimpleCar.h"

@implementation SimpleCar

// set methods
- (void) setVin:(NSNumber*)newVin {
    vin = [[NSNumber alloc] init];
    vin = newVin;
}

- (void) setMake:(NSString *)newMake {
    make = [[NSString alloc] init];
    make = newMake;
}

- (void) setModel:(NSString *)newModel {
    model = [[NSString alloc] init];
    model = newModel;
}


// get methods
- (NSString*) getMake {
    return make;
}

- (NSString*) getModel {
    return model;
}

- (NSNumber*) getVin {
    return vin;
}
@end
