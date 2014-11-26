//
//  InteractionTableViewController.m
//  HelpEachOther
//
//  Created by JunLee on 14/11/26.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import "InteractionTableViewController.h"
#import "InteractionTableViewCell.h"
#import "ChatTableViewController.h"

@interface InteractionTableViewController ()<UITableViewDataSource,UITableViewDelegate>
@end

@implementation InteractionTableViewController

- (void)awakeFromNib
{
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - UITableViewDataSource
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //创建cell
    static NSString *ID = @"Ranking";
    InteractionTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"InteractionTableViewCell"
                                             owner:nil
                                           options:nil] lastObject];
        
    }
    //设置 cell数据
    
    return cell;
}
-(void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ChatTableViewController * chatVc = [[ChatTableViewController alloc] init];
    [self.navigationController pushViewController:chatVc
                                         animated:YES];
}

@end
