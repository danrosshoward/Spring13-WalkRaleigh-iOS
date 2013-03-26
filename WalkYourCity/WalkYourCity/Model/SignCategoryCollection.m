//
//  SignCategoryCollection.m
//  WalkYourCity
//
//  Created by Dan Howard on 3/26/13.
//  Copyright (c) 2013 Dan Howard. All rights reserved.
//

#import "SignCategoryCollection.h"
@interface SignCategoryCollection()
@property (strong, nonatomic) NSMutableArray *signCategories; // of sign categories
@end

@implementation SignCategoryCollection

- (NSMutableArray *) signCategories
{
    if (!_signCategories) _signCategories = [[NSMutableArray alloc] init];
    return _signCategories;
}

- (void) addCategory:(SignCategory *)signCategory
{
    [self.signCategories addObject:signCategory];//need to make this addAtIndex
}
@end
