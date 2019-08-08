//
//  main.m
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "Util.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        
        Boolean gameOn = YES;
        
        while (gameOn) {
            
            AdditionQuestion *additionQuestion = [[AdditionQuestion alloc] init];
            [questionManager.questions addObject:additionQuestion];
            
            NSString *answer = [Util getUserInputWidthMaxLength:255 AndPrompt:[NSString stringWithFormat:@"%d + %d ? ", additionQuestion.left, additionQuestion.right]];
            
            if ([answer isEqualToString:@"quit"]) {
                break;
                
            } else if(additionQuestion.answer == [answer integerValue]) {
                NSLog(@"Right!");
                scoreKeeper.right += 1;
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong += 1;
            }
            
            [additionQuestion generateRandomQuestion];
        }
        
        NSLog(@"%@", scoreKeeper);
        NSLog(@"%@", [questionManager timeOutput]);
    }
    return 0;
}
