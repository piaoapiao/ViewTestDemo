//
//  ContentViewCell.h
//  ViewTestDemo
//
//  Created by guodong on 2018/10/31.
//  Copyright © 2018年 ViewTest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentViewCell : UITableViewCell

//@property IBOutlet(nonatomic,strong) UILabel *;
@property (weak, nonatomic) IBOutlet UIImageView *headImageView;

@property (weak, nonatomic) IBOutlet UILabel *contentLbl;
@end
