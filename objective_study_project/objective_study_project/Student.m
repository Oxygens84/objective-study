//
//  Student.m
//  objective_study_project
//
//  Created by Oxana Lobysheva on 27/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import "Student.h"

//@interface Student()
//@property (nonatomic, strong) NSInteger studentId;
//@property (nonatomic, strong) NSInteger studentAge;
//@property (nonatomic, strong) NSString *studentName;
//@property (nonatomic, strong) NSString *studentSurname;
//@end;

@implementation Student

- (NSString *)description
{
    return [NSString stringWithFormat:@"Student %li: %@ %@ (age %li)",
            (long)_studentId, _studentName, _studentSurname, (long)_studentAge];
}

- (void) setStudentId: (NSInteger)studentId
          studentName: (NSString *)studentName
       studentSurname: (NSString *)studentSurname
           studentAge: (NSInteger)studentAge {
    _studentId = studentId;
    _studentName = studentName;
    _studentSurname = studentSurname;
    _studentAge = studentAge;
}

//- (NSString *) studentName {
//    return _studentName;
//}
//- (NSString *) studentSurname {
//    return _studentSurname;
//}
//- (NSInteger) studentId {
//    return _studentId;
//}
//- (NSInteger) studentAge {
//    return _studentAge;
//}

//- (void) setStudentName: (NSString *) studentName {
//    _studentName = studentName;
//}
//- (void) setStudentSurname: (NSString *) studentSurname{
//    _studentSurname = studentSurname;
//}
//- (void) setStudentId: (NSInteger) studentId {
//    _studentId = studentId;
//}
//- (void) setStudentAge: (NSInteger) studentAge {
//    _studentAge = studentAge;
//}

@end
