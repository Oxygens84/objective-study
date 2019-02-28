//
//  Student.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 27/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject {
//    @private
//    NSInteger _studentId;
//    NSInteger _studentAge;
//    NSString *_studentName;
//    NSString *_studentSurname;
}

@property (assign) NSInteger studentId;
@property (assign) NSInteger studentAge;
@property (nonatomic, strong) NSString *studentName;
@property (nonatomic, strong) NSString *studentSurname;

- (void) setStudentId: (NSInteger)studentId
          studentName: (NSString *)studentName
       studentSurname: (NSString *)studentSurname
           studentAge: (NSInteger)studentAge;

//- (NSString *) studentName;
//- (NSString *) studentSurname;
//- (NSInteger) studentId;
//- (NSInteger) studentAge;

//- (void) setStudentName: (NSString *) studentName;
//- (void) setStudentSurname: (NSString *) studentSurname;
//- (void) setStudentId: (NSInteger) studentId;
//- (void) setStudentAge: (NSInteger) studentAge;

@end

NS_ASSUME_NONNULL_END
