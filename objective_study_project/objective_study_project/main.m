//
//  main.m
//  obective_study_project
//
//  Created by Oxana Lobysheva on 14/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float first = 0;
        float second = 0;
        char action = '+';
        
        printf("First number is: ");
        scanf("%f", &first);
        
        printf("Second number is: ");
        scanf("%f", &second);
        
        printf("Action is: ");
        scanf("%s", &action);
        
        if (action == '+'){
            NSLog(@"%f %c %f = %f", first, action, second, first + second);
        } else if (action == '-'){
            NSLog(@"%f %c %f = %f", first, action, second, first - second);
        } else if (action == '*'){
            NSLog(@"%f %c %f = %f", first, action, second, first * second);
        } else if (action == '/' && !(second == 0) ){
            NSLog(@"%f %c %f = %f", first, action, second, first / second);
        } else {
            NSLog(@"Wrong action %c", action);
        }
        
    }
    return 0;
}
