//
//  AlertViewContainer.h
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AlertViewContainer : NSObject

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message delegate:(id /*<UIAlertViewDelegate>*/)delegate cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

- (void)show;

@end
