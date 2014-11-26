//
//  MsgFrame.m
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import "MsgFrame.h"
#import "Msg.h"
@implementation MsgFrame

- (CGSize)sizeWithText:(NSString *)text
                  font:(UIFont *)font
               maxSize:(CGSize)maxSize
{
    NSDictionary *attrs = @{NSFontAttributeName : font};
    
    return [text boundingRectWithSize:maxSize
                              options:NSStringDrawingUsesLineFragmentOrigin
                           attributes:attrs
                              context:nil ].size;
}

- (void)setMessage:(Msg *)msg
{
    CGFloat padding = 10;  //间距
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width; // 屏幕宽度
    //时间
    CGFloat timeX = 0;
    CGFloat timeY = 0;
    CGFloat timeW = screenW;
    CGFloat timeH = 40;
    _timeF = CGRectMake(timeX, timeY, timeW, timeH);
    
    // 2.头像
    CGFloat iconY = CGRectGetMaxY(_timeF);
    CGFloat iconW = 40;
    CGFloat iconH = 40;
    CGFloat iconX;
    if (msg.type == 1) {// 别人发的
        iconX = padding;
    } else { // 自己的发的
        iconX = screenW - padding - iconW;
    }
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    // 3.正文
    CGFloat textY = iconY;
    // 文字的尺寸
    CGSize textMaxSize = CGSizeMake(150, MAXFLOAT);
    CGSize textSize = [self sizeWithText:msg.text
                                    font:[UIFont systemFontOfSize:15]
                                 maxSize:textMaxSize];
    CGFloat textX;
    if (msg.type == 1) {// 别人发的
        textX = CGRectGetMaxX(_iconF) + padding;
    } else {// 自己的发的
        textX = iconX - padding - textSize.width;
    }
    //    _textF = CGRectMake(textX, textY, textSize.width, textSize.height);
    _textF = (CGRect){{textX, textY}, textSize};
    
    // 4.cell的高度
    CGFloat textMaxY = CGRectGetMaxY(_textF);
    CGFloat iconMaxY = CGRectGetMaxY(_iconF);
    _cellHeight = MAX(textMaxY, iconMaxY) + padding;
}


@end
