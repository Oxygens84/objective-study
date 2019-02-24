//
//  main.m
//  obective_study_project
//
//  Created by Oxana Lobysheva on 14/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isEnglishFirstLetter(NSString* value)
{
    unichar firstLetter = [value.capitalizedString characterAtIndex:0];
    if (firstLetter >= 'A' && firstLetter <= 'Z') {
        return YES;
    }
    return NO;
}

float toSum(float value1, float value2){
    return value1 + value2;
}

float toDeduct(float value1, float value2){
    return value1 - value2;
}

float toDivide(float value1, float value2){
    if (value2 != 0){
        return value1 / value2;
    } else {
        return 0;
    }
}

float toMultiply(float value1, float value2){
    return value1 * value2;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSLog(@"Result: %hhd", isEnglishFirstLetter(@"B"));
        NSLog(@"Result: %hhd", isEnglishFirstLetter(@" F"));
        NSLog(@"Result: %hhd", isEnglishFirstLetter(@"hi かな"));
        NSLog(@"Result: %hhd", isEnglishFirstLetter(@"ら"));
        NSLog(@"Result: %hhd", isEnglishFirstLetter(@"8"));
        
        NSLog(@"Result (сложение): %.2f", toSum(17, 43.6888f));
        NSLog(@"Result (вычитание): %.2f", toDeduct(34, 45));
        NSLog(@"Result (деление): %.2f", toDivide(-18, 4.66f));
        NSLog(@"Result (деление на ноль): %.2f", toDivide(-15, 0));
        NSLog(@"Result (умножение): %.2f", toMultiply(23, 56));
        
    }
    return 0;
}
