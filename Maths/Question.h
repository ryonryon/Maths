//
//  Question.h
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic) int left;
@property (nonatomic) int right;
@property (nonatomic) int answer;

- (instancetype)initWithLeft: (int) left andRight: (int) right;

@end

NS_ASSUME_NONNULL_END
