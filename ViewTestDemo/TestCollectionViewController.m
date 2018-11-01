//
//  TestCollectionViewController.m
//  FenqiLoan
//
//  Created by guodong on 2018/10/26.
//  Copyright © 2018年 jinke. All rights reserved.
//

#import "TestCollectionViewController.h"
#import "CollectCell.h"
#import "HeadView.h"
#import "FootView.h"

@interface TestCollectionViewController ()

@end

@implementation TestCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    
    flowLayout.itemSize = CGSizeMake((self.view.bounds.size.width-10*2)/3, 50);
    
    flowLayout.minimumInteritemSpacing = 5;
    
    flowLayout.minimumLineSpacing = 20 ;
    
    flowLayout.headerReferenceSize = CGSizeMake(self.view.bounds.size.width, 50);
    
    
    flowLayout.footerReferenceSize = CGSizeMake(self.view.bounds.size.width, 100);
    
    flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
    
//      flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    
    
     UICollectionView *collView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:flowLayout];
    
     collView.delegate = self;
    
     collView.dataSource = self;
    
    // 需要设置 这个cell ，下面2个方法都是可以的
     [collView registerNib:[UINib nibWithNibName:@"CollectCell" bundle:[NSBundle mainBundle]] forCellWithReuseIdentifier:@"mycell2"];
    
    
    [collView registerClass:[HeadView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head"];
    
    [collView registerClass:[FootView  class] forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:@"foot"];
    
//    [collView registerClass:[CollectCell class] forCellWithReuseIdentifier:@"mycell2"];
    
     [self.view addSubview:collView];
         
     [collView reloadData];
    
    
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
//    return 0;
    return 4;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
//    return 0;
    return 4;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

        CollectCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"mycell2" forIndexPath:indexPath];
    
        cell.backgroundColor = [UIColor blueColor];

        return cell;
    
        
    
}



#pragma mark <UICollectionViewDelegate>

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"select:%d ",indexPath.row);
}

-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    NSString *reuseIdentifier;
    if([kind isEqualToString:UICollectionElementKindSectionFooter])
    {
        reuseIdentifier = @"foot";
    }
    else
    {
        reuseIdentifier = @"head";
    }
    UICollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    
    
    UILabel *label = (UILabel *)[view viewWithTag:1];
    
    if ([kind isEqualToString:UICollectionElementKindSectionHeader]){
        
        label.text = [NSString stringWithFormat:@"这是header:%ld",(long)indexPath.section];
            view.backgroundColor = [UIColor redColor];
//        label.backgroundColor = [
        
    }
    
    else if ([kind isEqualToString:UICollectionElementKindSectionFooter]){
        
        view.backgroundColor = [UIColor lightGrayColor];
        
        label.text = [NSString stringWithFormat:@"这是footer:%ld",(long)indexPath.section];
        view.backgroundColor = [UIColor greenColor];
    }

    return view;
    
}

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
