//
//  URLConnectionContainer.h
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface URLConnectionContainer : NSObject

- (instancetype)initWithRequest:(NSURLRequest *)request delegate:(id)delegate;

- (void)start;

@end
