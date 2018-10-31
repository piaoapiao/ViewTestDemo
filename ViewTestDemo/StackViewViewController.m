//
//  StackViewViewController.m
//  FenqiLoan
//
//  Created by guodong on 2018/10/29.
//  Copyright © 2018年 jinke. All rights reserved.
//

#import "StackViewViewController.h"

@interface StackViewViewController ()

@end

@implementation StackViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIStackView *stackView =  [[UIStackView alloc] init];
    [self.view addSubview:stackView];
    // Do any additional setup after loading the view from its nib.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)click:(id)sender {
    static int a = 0;
    a++;
    self.lable.text = [NSString stringWithFormat:@"a:%d",a];
    
    //[self.navigationController pus]
    
//    [UIView animateWithDuration:0 animations:^{
//        self.accessibilityActivationPoint
//    } completion:^(BOOL finished) {
//        
//    }];
    
    [UIView animateWithDuration:1 animations:^{
        self.lable.alpha = 0.5;
    } completion:^(BOOL finished) {
        static int a = 0;
        a++;
        if(a%2)
        {
            self.lable.hidden = YES;
        }
        else
        {
            self.lable.hidden = NO;
        }
    }];
    NSLog(@"df");
}
@end
