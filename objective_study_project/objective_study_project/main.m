//
//  main.m
//  obective_study_project
//
//  Created by Oxana Lobysheva on 14/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Calculator.h"
#import "Utils.h"
#import "Wheel.h"
#import "Engine.h"
#import "Car.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        @autoreleasepool {
            
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
        
        }
        
        @autoreleasepool {
            
            //--------------------------------------------------------
            // создать и распечатать массив
            //--------------------------------------------------------
            
            Utils *utils = [Utils initNewInstance];
            [utils printArray: [utils createArray: 15]];

            }
        
        @autoreleasepool {
            
            //--------------------------------------------------------
            // определение является ли первый символ английской буквой
            //--------------------------------------------------------
            
            Utils *utils = [Utils initNewInstance];
            
            NSArray *texts = @[@"B", @" F", @"hi かな", @"ら", @"8"];
            NSString *element;
            for (element in texts){
                NSLog(@"Check for %@: %hhd", element, [utils isEnglishFirstLetter: element ]);
            }
            
            texts = nil;
            element = nil;
            [texts release];
            [element release];
        
        }
        
        @autoreleasepool {
            
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
                  [[[NSMutableArray alloc] initWithObjects: student1, student2, nil] autorelease];
        
            NSLog(@"%@", studentsList);
            
            studentsList = nil;
            [studentsList release];
        }
        
        @autoreleasepool {
            
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
            [car release];
            
        }
        
        [NSRunLoop.currentRunLoop run];
    }
    return 0;
}
