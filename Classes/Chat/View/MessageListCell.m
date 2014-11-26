//
//  MessageListCell.m
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import "MessageListCell.h"
@interface MessageListCell()
{
    MessageListView *msgView;
}
@end

@implementation MessageListCell

@synthesize model = _model;

+ (float)cellHeight{
    return 60;//如果你需要高度随内容变化的cell，在这里返回高度计算结果
}
-(id)initWithStyle:(UITableViewCellStyle)style
   reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style
                reuseIdentifier:reuseIdentifier ];
    if (self) {
        [msgView removeFromSuperview];
        msgView = [[MessageListView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, [MessageListCell cellHeight])];
        [self.contentView addSubview:msgView];
    }
    return  self;
}


- (void)setSelected:(BOOL)selected
           animated:(BOOL)animated
{
    [super setSelected:selected
              animated:animated];

    // Configure the view for the selected state
}
- (void)setModel:(NSString *)model{
    _model = model;
    //*******************************************************************************
    //设置cView 的model属性， 由于CustomView 实现了- (void)setModel:(NSString *)model; 同时也会调用这个方法
    //*******************************************************************************
    msgView.model = _model;
}
@end
