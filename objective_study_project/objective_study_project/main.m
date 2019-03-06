//
//  main.m
//  obective_study_project
//
//  Created by Oxana Lobysheva on 14/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import "Student.h"
#import "Calculator.h"
#import "Utils.h"
#import "Wheel.h"
#import "Engine.h"
#import "Car.h"

void callbackFunc( void (*func)(void) ) {
    func();
}

void WeWillCallYou() {
    printf("\nWe Will Call You\n\n");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //--------------------------------------------------------
        // Блоки
        //--------------------------------------------------------
        
        int value1 = arc4random_uniform(10);
        int value2 = arc4random_uniform(10);
        
        // Квадрат суммы
        
        __block double result = 0;
        
        void (^squareOfsum)(int, int) = ^(int value1, int value2) {
            result = pow( (value1 + value2) ,2);
        };
        
        squareOfsum(value1,value2);        
        NSLog(@"Result (%i + %i)^2 = %f", value1, value2, result);
        
        // Куб суммы
        
        double (^cubeOfsum)(void) = ^(void) {
            return pow((value1 + value2),3);
        };

        result = cubeOfsum();
        NSLog(@"Result (%i + %i)^3 = %f", value1, value2, result);

        // Сортировка
        
        Utils *util = [Utils initNewInstance];
        __block NSArray *array = [util createRandomArray: 15];
        [util printArray: array];
        
        NSArray *sortedArray = [array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            NSInteger first = [obj1 integerValue];
            NSInteger second = [obj2 integerValue];
            if (first > second) {
                return NSOrderedDescending;
            }
            if (first < second) {
                return NSOrderedAscending;
            }
            return NSOrderedSame;
        }];
        [util printArray: sortedArray];
        
        
        NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        for (int i = 0; i < 10; i++ ) {
            [queue addOperationWithBlock:^{
                NSLog(@"TEST %d\n", i);
            }];
        }
        
        NSLog(@"TEST");
        [queue waitUntilAllOperationsAreFinished];
        

        //--------------------------------------------------------
        // калькулятор
        //--------------------------------------------------------
        
        Calculator *calculator = [Calculator initNewInstance];
        
        float res = [calculator calculatorForOperation: toSum
                                                value1: 17
                                                value2: 43.6888f];
        NSLog(@"Result (сложение): %.2f", res);
        
        res = [calculator calculatorForOperation: toDeduct
                                          value1: 34
                                          value2: 45];
        NSLog(@"Result (вычитание): %.2f", res);
        
        res = [calculator calculatorForOperation: toDivide
                                          value1: 6
                                          value2: 2];
        NSLog(@"Result (деление): %.2f", res);
        
        res = [calculator calculatorForOperation: toMultiply
                                          value1: 11
                                          value2: 11];
        NSLog(@"Result (умножение): %.2f", res);
        
        [calculator calculatorFor: arc4random_uniform(10)
                           value2: arc4random_uniform(10)];
            
        //--------------------------------------------------------
        // создать и распечатать массив
        // определение является ли первый символ английской буквой
        //--------------------------------------------------------
        
        Utils *utils = [Utils initNewInstance];
        
        [utils printArray: [utils createArray: 15]];

        NSArray *texts = @[@"B", @" F", @"hi かな", @"ら", @"8"];
        NSString *element;
        for (element in texts){
            NSLog(@"Check for %@: %hhd", element, [utils isEnglishFirstLetter: element ]);
        }        
        
        //--------------------------------------------------------
        // вывести список студентов
        //--------------------------------------------------------
        
        Student *student1 = [[Student alloc] initWithData: 1
                                              studentName: @"Batman"
                                           studentSurname: @"W"
                                               studentAge: 30];
        
        Student *student2 = [[Student alloc] initWithData: 2
                                              studentName: @"Robin"
                                           studentSurname: @"S"
                                               studentAge: 20];
        [student1 addYearToAge];
        [student2 addYearToAge];
        
        NSMutableArray *studentsList =
              [[NSMutableArray alloc] initWithObjects: student1, student2, nil];
    
        NSLog(@"%@", studentsList);
        
        //--------------------------------------------------------
        // автомобили
        //--------------------------------------------------------
        
        Car *car = [[Car alloc] init];
        
        Wheel *wheel1 = [[Wheel alloc] initWithNumber:@1];
        Wheel *wheel2 = [[Wheel alloc] initWithNumber:@2];
        Wheel *wheel3 = [[Wheel alloc] initWithNumber:@3];
        Wheel *wheel4 = [[Wheel alloc] initWithNumber:@4];
        
        NSArray *wheels = [[NSArray alloc] initWithObjects:wheel1, wheel2, wheel3, wheel4, nil];
        Engine *engine = [[Engine alloc] initWithModel:@"Engine 1x"];
        
        [car configWithEngine:engine andWheels:wheels];
      
        //--------------------------------------------------------
        // We will call you
        //--------------------------------------------------------
        
        callbackFunc(WeWillCallYou);
    }
    return 0;
}
