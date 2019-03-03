//
//  Student.h
//  objective_study_project
//
//  Created by Oxana Lobysheva on 27/02/2019.
//  Copyright © 2019 Oxana Lobysheva. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (nonatomic, assign, readonly) NSInteger studentId;
@property (nonatomic, assign, readonly) NSInteger studentAge;
@property (nonatomic, strong) NSString *studentName;
@property (nonatomic, strong) NSString *studentSurname;
@property (nonatomic, strong) NSString *studentFullname;

-(instancetype) initWithData: (NSInteger)studentId
                 studentName: (NSString*)studentName
              studentSurname: (NSString*)studentSurname
                  studentAge: (NSUInteger)studentAge;

-(void)addYearToAge;

@end

NS_ASSUME_NONNULL_END
