//
//  Engine.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 04/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject

- (instancetype) initWithModel:(NSString *)model;

@property (nonatomic, strong) NSString *model;

@end

