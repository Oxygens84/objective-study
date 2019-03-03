//
//  Car.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 04/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

- (void)configWithEngine:(Engine *)engine andWheels:(NSArray *)wheels;

@property (nonatomic, strong) Engine *engine;
@property (nonatomic, strong) NSArray *wheels;

@end
