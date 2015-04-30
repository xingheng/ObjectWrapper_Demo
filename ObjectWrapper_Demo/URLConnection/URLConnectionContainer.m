//
//  URLConnectionContainer.m
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import "URLConnectionContainer.h"
#import "MyURLConnection.h"

@interface URLConnectionContainer()

@property (nonatomic, RETAIN) MyURLConnection *connection;

@property (nonatomic, RETAIN) NSMutableArray *extraArray;

@end


@implementation URLConnectionContainer

- (instancetype)initWithRequest:(NSURLRequest *)request delegate:(id)delegate
{
    if (self = [super init]) {
        _connection = [[MyURLConnection alloc] initWithRequest:request delegate:delegate startImmediately:NO];
        _extraArray = [[NSMutableArray alloc] init];
        
        [_extraArray addObject:request.URL];
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%s, %@", __func__, self);
    NSLog(@"%s, begin to clear the extraArray.", __func__);
    [_extraArray removeAllObjects], _extraArray = nil;
    RELEASE(_extraArray);
    
    DEALLOC(super);
}


- (void)start
{
    [NSRunLoop ]
    
    [self.connection start];
}

@end
