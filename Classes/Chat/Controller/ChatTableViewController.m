//
//  ChatTableViewController.m
//  HelpEachOther
//
//  Created by JunLee on 14/11/26.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import "ChatTableViewController.h"

#import "MsgFrame.h"
#import "Msg.h"
#import "MsgCell.h"

#import "AppDelegate.h"
@interface ChatTableViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UIView *_view;
    UITableView *_tableView;
}



@end

@implementation ChatTableViewController
// 懒加载
-(NSMutableArray *)msgFrames
{
    if (_msgFrames == nil) {
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[ [NSBundle mainBundle]
                                                               pathForResource:@"messages.plist"
                                                               ofType:nil
                                                               ]
                              ];
        NSMutableArray *mfArray = [NSMutableArray array];
        for (NSDictionary *dict in dictArray )
        {
            Msg *msg = [Msg msgWithDict:dict];      // 数据 模型
            MsgFrame *mf = [[MsgFrame alloc] init];  //  数据的 frame 模型
            mf.message = msg;                        // 数据模型 作为 frame模型的 一个成员变量
            [mfArray addObject:mf];
        }
        _msgFrames = mfArray;
    }
    return _msgFrames;
}

- (void)viewDidLoad
{
    NSLog(@"viewDidLoad");
    [super viewDidLoad];
    CGRect frame = [self.view bounds];  //
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    // 去除分割线
    _tableView.backgroundColor = [UIColor colorWithRed:235/255.0 green:235/255.0 blue:235/255.0 alpha:1.0];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
}
#pragma mark -DataSource
-(NSInteger)tableView:(UITableView *)TableView
numberOfRowsInSection:(NSInteger)section
{
    //NSLog(@"table Section num: %ld",[self msgFrames].count);
    return [self msgFrames].count;
}

-(UITableViewCell *)tableView:(UITableView *)TableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //   NSLog(@"~~~~~~~tableView:cellForRowAtIndexPath:~~~~~");
    MsgCell *cell = [MsgCell cellWithTableView:TableView ];
    [cell setMessageFrame:self.msgFrames[indexPath.row]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}
-(CGFloat)tableView:(UITableView *)TableView
heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MsgFrame *mf = [self msgFrames][indexPath.row];
    return mf.cellHeight;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath
                             animated:YES]; // 取消 选中效果
    
    [UIView animateWithDuration:1
                     animations:^{
                         
                         _view = [[ UIView alloc] initWithFrame:self.view.bounds];
                         _view.backgroundColor = [UIColor colorWithWhite:1 alpha:1];
                         
                         UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
                         [_view addSubview:cell];
                         AppDelegate *delegate = [UIApplication sharedApplication].delegate;
                         [delegate.window addSubview:_view];
                         UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapWindow:)];
                         [_view addGestureRecognizer:tap];
                     }];
}

- (void)tapWindow:(UITapGestureRecognizer *)recogniser
{
    
    if (_view)
    {
        [_view removeFromSuperview]; // 如果 当前时_view 效果 那么 退出这个效果
    }
    [_tableView performSelectorOnMainThread:@selector(reloadData)
                                 withObject:nil
                              waitUntilDone:YES];   //主线程刷新UI
    
    
    
}



@end
