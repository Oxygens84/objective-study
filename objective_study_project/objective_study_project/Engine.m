//
//  Engine.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 04/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (instancetype)initWithModel:(NSString *)model {
    self = [super init];
    if (self) {
        _model = model;
        NSLog(@"Model engine - %@", model);
    }
    return self;
}

@end

