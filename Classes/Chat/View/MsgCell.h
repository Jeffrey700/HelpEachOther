//
//  MsgCell.h
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MsgFrame.h"
@interface MsgCell : UITableViewCell

+(instancetype)cellWithTableView:(UITableView*)tableView ;

@property (nonatomic,strong)MsgFrame *messageFrame;

@end
