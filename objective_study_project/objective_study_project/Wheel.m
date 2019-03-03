//
//  Wheel.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 04/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Wheel.h"

@implementation Wheel

- (instancetype)initWithNumber:(NSNumber *)number {
    self = [super init];
    if (self) {
        [number retain];
        [number release];
        _number = number;
        NSLog(@"Create Wheel %@", number);
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Dealloc Wheel - %@", _number);
    [_number release];
    [super dealloc];
}

@end
