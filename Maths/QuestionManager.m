//
//  QuestionManager.m
//  Maths
//
//  Created by Ryo Togashi on 2019-08-07.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    if ([super init]) {
        _questions = [NSMutableArray<AdditionQuestion *> array];
    }
    return self;
}

- (NSString *)timeOutput {
    return [NSString stringWithFormat:@"total time: %ds avarage time: %lus", [self getTotalTime], ([self getTotalTime] / _questions.count)];
}

- (int)getTotalTime {
    int totalTime = 0;
    for(int i = 0; i < _questions.count; i++) {
        totalTime += [_questions[i] answerTime];
    }
    
    return totalTime;
}

@end
