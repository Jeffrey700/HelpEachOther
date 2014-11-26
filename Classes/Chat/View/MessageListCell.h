//
//  MessageListCell.h
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MessageListView.h"
@interface MessageListCell : UITableViewCell
@property (nonatomic,strong) NSString *model;

+ (float)cellHeight;
@end
