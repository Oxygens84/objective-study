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
    [calculator autorelease];
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

-(void)dealloc {
    [super dealloc];
    NSLog(@"Memory cleaned up");
}

@end
