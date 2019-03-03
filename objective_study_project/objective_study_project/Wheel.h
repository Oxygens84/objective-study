//
//  Wheel.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 04/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Wheel : NSObject

- (instancetype) initWithNumber:(NSNumber *)number;

@property (nonatomic, strong) NSNumber *number;

@end
