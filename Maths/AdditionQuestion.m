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
    }
    return self;
}

- (void)generateRandomQuestion {
    
    NSUInteger left = arc4random_uniform(90) + 10;
    NSUInteger right = arc4random_uniform(90) + 10;
    
    question = [[Question alloc] initWithLeft: (int) left andRight: (int) right];
}

- (Question *) getQuestion {
    return question;
}

@end
