//
//  HeadView.m
//  ViewTestDemo
//
//  Created by guodong on 2018/11/1.
//  Copyright © 2018年 ViewTest. All rights reserved.
//

#import "HeadView.h"


@implementation HeadView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//-(void)init()
//{
//    
//}

//-(void)layout
//{
//    UILabl
//}


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.contentLbl.frame = CGRectMake(20,20,200,20);
        
    }
    return self;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
//    self.contentLbl.frame = CGRectMake(20,20,100,20);
}

//@property (weak, nonatomic) IBOutlet UILabel *contentLbl;

-(UILabel *)contentLbl
{
    if(!_contentLbl)
    {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.tag = 1;
        [self addSubview:_contentLbl];
    }
    return  _contentLbl;
}
@end
