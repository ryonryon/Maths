//
//  Util.m
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import "Util.h"

@implementation Util

+(NSString *) getUserInputWidthMaxLength: (int) maxLength AndPrompt: (NSString *) prompt {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL) {
        NSString *inputStr = [NSString stringWithUTF8String:inputChars];
        // NSString.stringWithUTF8String(inputChars);
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}
@end
