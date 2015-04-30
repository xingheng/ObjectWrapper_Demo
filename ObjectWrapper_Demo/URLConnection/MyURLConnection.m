//
//  MyURLConnection.m
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "MyURLConnection.h"

@implementation MyURLConnection

- (void)dealloc
{
    NSLog(@"%s, %@", __func__, self);
    DEALLOC(super);
}

@end
