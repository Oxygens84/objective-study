//
//  Calculator.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 03/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

enum CalculatorOperations{
    toSum,
    toDeduct,
    toDivide,
    toMultiply
};
typedef enum CalculatorOperations CalculatorOperations;


@interface Calculator : NSObject

+(instancetype) initNewInstance;

-(float) calculatorForOperation: (CalculatorOperations)operation
                         value1: (float)value1
                         value2: (float)value2;

@end

NS_ASSUME_NONNULL_END
