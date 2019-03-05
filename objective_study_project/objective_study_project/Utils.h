//
//  Utils.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 03/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utils : NSObject

+(instancetype)initNewInstance;

-(BOOL)isEnglishFirstLetter: (NSString*) value;

-(NSMutableArray<NSString *>*) createArray: (int) countElements ;

-(void) printArray: (NSArray *) array;

@end

NS_ASSUME_NONNULL_END
