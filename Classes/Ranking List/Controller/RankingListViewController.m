//
//  RankingListViewController.m
//  Demo
//
//  Created by JunLee on 14/11/24.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import "RankingListViewController.h"
#import "IWSearchBar.h"

#import "CustomTableViewCell.h"
@interface RankingListViewController ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation RankingListViewController

- (void)awakeFromNib
{
  
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置navigationBar的背景图片
      /*加了一个按钮 确实显示是 这个VC
    UIButton* btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 40, 40)];
    btn.titleLabel.text = @"ahah";
    [btn setBackgroundColor:[UIColor blackColor]];
    [self.view addSubview:btn];
    */
    
    /*代码自定义searchBar
    IWSearchBar *searchBar = [IWSearchBar searchBar];
    // 尺寸
    searchBar.frame = CGRectMake(0, 0, 300, 30);
    // 设置中间的标题内容
    self.navigationItem.titleView = searchBar;
     */
     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //创建cell
    static NSString *ID = @"Ranking";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell"
                                             owner:nil
                                           options:nil][0];
        
    }
    //设置 cell数据
    
    return cell;
}


@end
