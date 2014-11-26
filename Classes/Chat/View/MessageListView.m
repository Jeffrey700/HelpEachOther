//
//  MessageListView.m
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import "MessageListView.h"

@implementation MessageListView
@synthesize model = _model;

-(id) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
  
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}
- (void)drawRect:(CGRect)rect {
    // Drawing code
   // [[UIColor blueColor] set];
    //绘制图片
    UIImage *image = [UIImage imageNamed:@"a1－1"];
    [image drawInRect:CGRectMake(5, 5, 50, 50)];
    // 绘制字符串 名字
    [_model drawInRect:CGRectMake(60, 5, 200, 30)
              withFont:[UIFont systemFontOfSize:18]];
    
    //绘制文字
    // [[UIColor redColor] set];
    [_model drawInRect:CGRectMake(60, 40, 300, 30)
              withFont:[UIFont systemFontOfSize:18]];
}

-(void)setModel:(NSString *)model
{
    _model = model;
    [self setNeedsDisplay]; //绘制自己
}

@end
