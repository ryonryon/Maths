//
//  AdditionQuestion.m
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import "AdditionQuestion.h"
#import "Question.h"
#import "Util.h"

@implementation AdditionQuestion

Question *question;

- (instancetype)init {
    
    if ([super init]) {
        _score = 0;
        [self generateRandomQuestion];
        _startTime = [NSDate date];
    }
    return self;
}

- (void)generateRandomQuestion {
    
    _left = arc4random_uniform(90) + 10;
    _right = arc4random_uniform(90) + 10;
    _answer = _left + _right;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
