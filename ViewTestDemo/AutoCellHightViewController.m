//
//  AutoCellHightViewController.m
//  ViewTestDemo
//
//  Created by guodong on 2018/10/31.
//  Copyright © 2018年 ViewTest. All rights reserved.
//

#import "AutoCellHightViewController.h"
#import "ContentViewCell.h"

@interface AutoCellHightViewController ()
@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) NSMutableArray *contentArray;
@end

@implementation AutoCellHightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self layoutView];
    
    self.contentArray =@[@"12312312312",@"tiankongbaiyuntiankongbaiyuntiankongbaiyuntiankongbaiyuntiankongbaiyuntiankongbaiyuntiankongbaiyuntiankongbaiyun",@"333333333333333333333333333333333333333333333333333333"];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma makr --UITableViewDelegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.contentArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ContentViewCell *cell = [[ContentViewCell alloc] init];
    cell.contentLbl.text = [self.contentArray objectAtIndex:[indexPath row]];
    
    return cell;
}

-(void)layoutView
{
//    self.view.backgroundColor = [UIColor colorWithRed:246 green:247 blue:248 alpha:1];
    
    self.tableView.frame = CGRectMake(0, 0,  [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
    //self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    //self.view.backgroundColor = [UIColor colorWithRed:200 green:200 blue:200 alpha:1];
    
//    self.view.backgroundColor = [UIColor colorWithRed:0.96 green:0.97 blue:0.97 alpha:1];
    
    self.tableView.backgroundColor = [UIColor colorWithRed:0.96 green:0.97 blue:0.97 alpha:1];

    
    [self.view addSubview:self.tableView];
}

-(UITableView *)tableView
{
    if(!_tableView)
    {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return  _tableView;
}

@end
