//
//  MsgCell.m
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import "MsgCell.h"
#import "Msg.h"
#import "MsgFrame.h"
@interface MsgCell()
@property (nonatomic,strong) UILabel * timeView;
@property (nonatomic,strong) UIImageView * iconView;
@property (nonatomic,strong) UIButton *textView ;
@end

@implementation MsgCell


- (void)awakeFromNib {
    // Initialization code
}
+(instancetype)cellWithTableView:(UITableView*)tableView
{
    static NSString *ID = @"message";
    MsgCell *cell = [tableView dequeueReusableCellWithIdentifier:ID ];
    if (cell == nil) {
        cell = [[MsgCell alloc] initWithStyle:UITableViewCellStyleDefault
                              reuseIdentifier:ID ];
    }
    return cell;
}

-(id)initWithStyle:(UITableViewCellStyle)style
   reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.timeView = [[UILabel alloc] init];
        self.timeView.textAlignment = NSTextAlignmentCenter;
        self.timeView.textColor = [UIColor grayColor];
        self.timeView.font = [UIFont systemFontOfSize:13];
        [self.contentView addSubview:self.timeView];
        
        
        //头像
        self.iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.iconView];
       // 对话文字
        
         _textView = [[UIButton alloc] init];
        _textView.titleLabel.numberOfLines = 0;
 //       _textView.
        _textView.backgroundColor = [UIColor greenColor];
        _textView.titleLabel.font =[UIFont systemFontOfSize:15];
        
        [self.contentView addSubview:_textView];
       
        self.backgroundColor = [UIColor clearColor];
    }
    
 // self.messageFrame = MsgFrame;
    return self;
}

-(void)setMessageFrame:(MsgFrame *)messageFrame
{
    Msg *msg = messageFrame.message;
    // 1.时间
    self.timeView.text = msg.time;
    self.timeView.frame = messageFrame.timeF;
    
    // 2.头像
    NSString *icon = (msg.type == MJMessageTypeMe) ? @"me" : @"other";
    self.iconView.image = [UIImage imageNamed:icon];
    self.iconView.frame = messageFrame.iconF;
    
    // 3.正文
    [self.textView setTitle:msg.text
                   forState:UIControlStateNormal];
    self.textView.frame = messageFrame.textF;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
