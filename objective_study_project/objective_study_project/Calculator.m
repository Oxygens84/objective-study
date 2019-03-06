//
//  Calculator.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 03/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

+(instancetype) initNewInstance{
    Calculator *calculator = [Calculator new];
    return calculator;
}

-(float) calculatorForOperation: (CalculatorOperations)operation
                         value1: (float)value1
                         value2: (float)value2 {
    if (operation == toSum){
        return value1 + value2;
    }
    if (operation == toDeduct){
        return value1 - value2;
    }
    if (operation == toDivide && value2 != 0){
        return value1 / value2;
    }
    if (operation == toMultiply){
        return value1 * value2;
    }
    return 0;
}

-(void) calculatorFor: (float)value1
               value2: (float)value2 {
    
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);

    dispatch_async(globalQueue, ^{
        NSLog(@"res %f + %f = %f", value1, value2, value1 + value2);
    });

    dispatch_async(globalQueue, ^{
        NSLog(@"res %f - %f = %f", value1, value2, value1 - value2);
    });
    
    dispatch_async(globalQueue, ^{
        if (value2 == 0) {
            NSLog(@"Error %f = 0", value2);
        } else {
            NSLog(@"res %f / %f = %f", value1, value2, value1 / value2);
        }
    });
    
    dispatch_async(globalQueue, ^{
        NSLog(@"res %f * %f = %f", value1, value2, value1 * value2);
    });
}


@end
