//
//  Utils.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 03/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Utils.h"
#import <stdlib.h>

@implementation Utils

+(instancetype)initNewInstance{
    Utils *utils = [Utils new];
    return utils;
}


-(BOOL)isEnglishFirstLetter: (NSString*)value {
    unichar firstLetter = [value.capitalizedString characterAtIndex:0];
    if (firstLetter >= 'A' && firstLetter <= 'Z') {
        return YES;
    }
    return NO;
};


-(NSMutableArray<NSString *>*) createArray: (int) countElements {
    NSMutableArray *simpleArray = [[NSMutableArray alloc] initWithObjects: @"default", nil];
    for (int i = 1; i < countElements; i++){
        NSString *number = [NSString stringWithFormat:@"%d",i];
        [simpleArray addObject: [@"element" stringByAppendingString: number]];
    }
    return simpleArray;
}

-(NSMutableArray*) createRandomArray: (int) countElements {
    NSMutableArray *simpleArray = [NSMutableArray new];
    for (int i = 0; i < countElements; i++){
        int value = arc4random_uniform(100);
        [simpleArray addObject: [NSNumber numberWithInt:(value)]];
    }
    return simpleArray;
}

-(void) printArray: (NSArray *)array{
    NSString *element;
    NSLog(@"%@", @"-----------------------");
    for (element in array){
        NSLog(@"%@", element);
    }
    NSLog(@"%@", @"-----------------------");
}

@end
