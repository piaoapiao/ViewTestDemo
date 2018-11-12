//
//  TimerViewController.h
//  ViewTestDemo
//
//  Created by guodong on 2018/11/12.
//  Copyright © 2018年 ViewTest. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimerViewController : UIViewController
@property (nonatomic,retain)  NSTimer *timer;

@property (weak, nonatomic) IBOutlet UILabel *testLbl;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

NS_ASSUME_NONNULL_END
