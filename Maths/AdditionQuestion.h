//
//  AdditionQuestion.h
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property (nonatomic) int score;

- (instancetype)init;
- (void)generateRandomQuestion;
- (Question *) getQuestion;

@end

NS_ASSUME_NONNULL_END
