//
//  main.m
//  obective_study_project
//
//  Created by Oxana Lobysheva on 14/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

enum CalculatorOperations{
    toSum,
    toDeduct,
    toDivide,
    toMultiply
};

typedef enum CalculatorOperations CalculatorOperations;


BOOL isEnglishFirstLetter(NSString* value)
{
    unichar firstLetter = [value.capitalizedString characterAtIndex:0];
    if (firstLetter >= 'A' && firstLetter <= 'Z') {
        return YES;
    }
    return NO;
}

NSMutableArray<NSString *>* createArray(int countElements){
    NSMutableArray *simpleArray = [[NSMutableArray alloc] initWithObjects: @"default", nil];
    for (int i = 1; i < countElements; i++){
        NSString *number = [NSString stringWithFormat:@"%d",i];
        [simpleArray addObject: [@"element" stringByAppendingString: number]];
    }
    return simpleArray;
}

void printArray(NSArray *array){
    NSString *element;
    for (element in array){
        NSLog(@"%@", element);
    }
}

float calculate(float value1, NSString *operation, float value2){
    if ([operation isEqualToString:@"toSum"]){
       return value1 + value2;
    }
    if ([operation isEqualToString:@"toDeduct"]){
        return value1 - value2;
    }
    if ([operation isEqualToString:@"toDivide"] && value2 != 0){
        return value1 / value2;
    }
    if ([operation isEqualToString:@"toMultiply"]){
        return value1 * value2;
    }
    return 0;
}


float calculator(float value1, CalculatorOperations operation, float value2){
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




int main(int argc, const char * argv[]) {
    @autoreleasepool {

        // создать и распечатать массив
        printArray(createArray(15));
        
        // использование словаря в калькуляторе
        NSDictionary *operations = [@{
                                      @"+": @"toSum",
                                      @"-": @"toDeduct",
                                      @"/": @"toDivide",
                                      @"*": @"toMultiply"
                                    } mutableCopy];
        
        NSLog(@"Result (сложение): %.2f", calculate(17, operations[@"+"], 43.6888f));
        NSLog(@"Result (вычитание): %.2f", calculate(34, operations[@"-"], 45));
        NSLog(@"Result (деление): %.2f", calculate(-18, operations[@"/"], 4.66f));
        NSLog(@"Result (деление на ноль): %.2f", calculate(-15, operations[@"/"], 0));
        NSLog(@"Result (умножение): %.2f", calculate(23, operations[@"*"],  56));
        
        // использование enum в калькуляторе
        CalculatorOperations action = toSum;
        NSLog(@"Result (сложение): %.2f", calculator(17, action, 43.6888f));
        
        // определение является ли первый символ английской буквой
        NSArray *texts = @[@"B", @" F", @"hi かな", @"ら", @"8"];
        NSString *element;
        for (element in texts){
            NSLog(@"Check for %@: %hhd", element, isEnglishFirstLetter(element));
        }
        
    }
    return 0;
}
