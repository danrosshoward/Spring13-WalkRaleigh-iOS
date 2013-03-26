//
//  SignCategoryCollection.h
//  WalkYourCity
//
//  Created by Dan Howard on 3/26/13.
//  Copyright (c) 2013 Dan Howard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SignCategory.h"

@interface SignCategoryCollection : NSObject

- (void) addCategory: (SignCategory *) signCategory; //need to put an index parameter in here

@end
