//
//  RankingListViewController.h
//  Demo
//
//  Created by JunLee on 14/11/24.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RankingListViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UISegmentedControl *scopeBar;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
