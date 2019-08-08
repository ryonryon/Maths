//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface AdditionQuestion : NSObject

@property (nonatomic) int score;
@property (nonatomic) NSInteger left;
@property (nonatomic) NSInteger right;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

- (instancetype)init;
- (void)generateRandomQuestion;
- (NSTimeInterval)answerTime;

@end
