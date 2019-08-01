//
//  ScoreKeeper.m
//  Maths
//
//  Created by Ryo Togashi on 2019-08-01.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    if ([super init]) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat: @"score: %d right, %d wrong ---- %@ %%"
            , self.right
            , self.wrong
            , self.right == 0 && self.wrong == 0
                ? @"0"
                : [NSString stringWithFormat:@"%.0f", (double)self.right / ((double)self.right + (double)self. wrong) * 100]];
}

@end
