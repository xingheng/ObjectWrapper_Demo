//
//  URLConnectionContainer.h
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@class URLConnectionContainer;


@protocol URLConnectionContainerDelegate <NSObject>

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data;

- (void)connection:(NSURLConnection *)connection didSendBodyData:(NSInteger)bytesWritten
 totalBytesWritten:(NSInteger)totalBytesWritten totalBytesExpectedToWrite:(NSInteger)totalBytesExpectedToWrite;

- (void)connectionDidFinishLoading:(NSURLConnection *)connection;

@end



@interface URLConnectionContainer : NSObject

@property (nonatomic, WEAK) id<URLConnectionContainerDelegate>delegate;


- (instancetype)initWithRequest:(NSURLRequest *)request delegate:(id<URLConnectionContainerDelegate>)delegate;

- (void)start;

@end
