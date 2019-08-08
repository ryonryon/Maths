//
//  QuestionManager.h
//  Maths
//
//  Created by Ryo Togashi on 2019-08-07.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray<AdditionQuestion *> *questions;

- (instancetype)init;

- (NSString *)timeOutput;

@end
