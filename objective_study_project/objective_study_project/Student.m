//
//  Student.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 27/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Student.h"

@implementation Student

-(NSString *)studentFullname{
    return [self.studentName stringByAppendingFormat:@" %@", self.studentSurname];
}

-(NSString *)description{
    return [NSString stringWithFormat:@"Student %li %@: %@, %@, %li years old",
            self.studentId, self.studentFullname, self.studentName, self.studentSurname, self.studentAge];
}

-(instancetype) initWithData: (NSInteger)studentId
                 studentName: (NSString*)studentName
              studentSurname: (NSString*)studentSurname
                  studentAge: (NSUInteger)studentAge {
    self = [super init];
    if (self){
        _studentId = studentId;
        _studentName = studentName;
        _studentSurname = studentSurname;
        _studentAge = studentAge;
    }
    return self;
}

-(void)addYearToAge{
    _studentAge++;
}

@end
