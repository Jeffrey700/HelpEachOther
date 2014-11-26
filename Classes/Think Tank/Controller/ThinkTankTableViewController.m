//
//  ThinkTankTableViewController.m
//  HelpEachOther
//
//  Created by JunLee on 14/11/26.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import "ThinkTankTableViewController.h"
#import "ThinkTankTableViewCell.h"

@interface ThinkTankTableViewController ()
@end

@implementation ThinkTankTableViewController
- (void)viewDidLoad
{
    [super viewDidLoad];

}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{

    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //创建cell
    static NSString *ID = @"Ranking";
    ThinkTankTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ThinkTankTableViewCell"
                                             owner:nil
                                           options:nil][0];
        
    }
    //设置 cell数据
    
    return cell;
}


@end
