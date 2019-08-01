//
//  Util.h
//  Maths
//
//  Created by Ryo Togashi on 2019-07-31.
//  Copyright © 2019 Ryo Togashi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Util : NSObject

+(NSString *)getUserInputWidthMaxLength: (int) maxLength AndPrompt: (NSString *) prompt;

@end

NS_ASSUME_NONNULL_END
