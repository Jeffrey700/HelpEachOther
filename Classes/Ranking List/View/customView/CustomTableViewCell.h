//
//  CustomTableViewCell.h
//  Demo
//
//  Created by JunLee on 14/11/24.
//  Copyright (c) 2014年 jeffrey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *num;
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *subtitle;
@property (weak, nonatomic) IBOutlet UIImageView *icon;
@end
