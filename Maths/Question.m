//
//  Question.m
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)initWithLeft: (int) left andRight: (int) right
{
    if ([super init]) {
        _left = left;
        _right = right;
        _answer = left + right;
    }
    return self;
}

@end
