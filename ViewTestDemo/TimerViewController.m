//
//  TimerViewController.m
//  ViewTestDemo
//
//  Created by guodong on 2018/11/12.
//  Copyright © 2018年 ViewTest. All rights reserved.
//

#import "TimerViewController.h"

@interface TimerViewController ()

@end

@implementation TimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollView.contentSize =  CGSizeMake(400, 1500);
    
    self.timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(beginRefreshUI) userInfo:nil repeats:YES];
    
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    
  // [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSDefaultRunLoopMode];
    
    
    // Do any additional setup after loading the view from its nib.
}

-(void)beginRefreshUI
{
   NSDate* now = [NSDate date];
   NSDateFormatter* fmt = [[NSDateFormatter alloc] init];
   fmt.locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
   fmt.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss";
   NSString* dateString = [fmt stringFromDate:now];
    self.testLbl.text = dateString;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
