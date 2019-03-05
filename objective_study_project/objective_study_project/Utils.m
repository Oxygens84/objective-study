//
//  Utils.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 03/03/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Utils.h"

@implementation Utils

+(instancetype)initNewInstance{
    Utils *utils = [Utils new];
    [utils autorelease];
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

-(void) printArray: (NSArray *)array{
    NSString *element;
    for (element in array){
        NSLog(@"%@", element);
    }
}

-(void)dealloc {
    [super dealloc];
    NSLog(@"Memory cleaned up");
}

@end
