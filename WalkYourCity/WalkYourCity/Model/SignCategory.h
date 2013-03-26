//
//  SignCategory.h
//  WalkYourCity
//
//  Created by Dan Howard on 3/26/13.
//  Copyright (c) 2013 Dan Howard. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SignCategory : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter = isDisplayed) BOOL display;

@end
