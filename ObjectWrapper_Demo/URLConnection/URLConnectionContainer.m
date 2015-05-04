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

- (instancetype)initWithRequest:(NSURLRequest *)request delegate:(id<URLConnectionContainerDelegate>)delegate
{
    if (self = [super init]) {
        _connection = [[MyURLConnection alloc] initWithRequest:request delegate:self startImmediately:NO];
        _extraArray = [[NSMutableArray alloc] init];
        
        _delegate = delegate;
        
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
    [self.connection start];
    RELEASE(self.connection);
}


#pragma mark - NSURLConnectionDataDelegate

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //NSLog(@"%s, %@", __func__, connection);
    if (self.delegate)
        [self.delegate connection:connection didReceiveResponse:response];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //NSLog(@"%s, %@", __func__, connection);
    if (self.delegate)
        [self.delegate connection:connection didReceiveData:data];
}

- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten
 totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite
{
    //NSLog(@"%s, %@", __func__, connection);
    if (self.delegate)
        [self.delegate connection:connection didSendBodyData:bytesWritten totalBytesWritten:totalBytesWritten totalBytesExpectedToWrite:totalBytesExpectedToWrite];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //NSLog(@"%s, %@", __func__, connection);
    if (self.delegate)
        [self.delegate connectionDidFinishLoading:connection];
}


@end
