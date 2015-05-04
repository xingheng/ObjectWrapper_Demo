//
//  MyAlertView.h
//  ObjectWrapper_Demo
//
//  Created by Wei Han on 4/30/15.
//  Copyright (c) 2015 Wei Han. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MyAlertView;

@protocol MyAlertViewDelegate <NSObject>

- (void)onAlertViewDealloc:(MyAlertView *)alertView;

@end


@interface MyAlertView : UIAlertView

@property (nonatomic, WEAK) id<MyAlertViewDelegate> lifeCycleDelegate;

@end
