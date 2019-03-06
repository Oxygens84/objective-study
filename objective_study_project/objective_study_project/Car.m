//
//  Car.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 04/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Engine.h"
#import "Wheel.h"
#import "Car.h"

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"Create car");
    }
    return self;
}

- (void)configWithEngine:(Engine *)engine andWheels:(NSArray *)wheels {
    _engine = engine;
    NSLog(@"Add engine for car");
    
    _wheels = wheels;
    for (Wheel *wheel in wheels) {
        NSLog(@"Add wheel (%@) for car", wheel.number);
    }
}

@end

