//
//  MsgFrame.h
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "MsgFrame.h"
@class Msg;

@interface MsgFrame : NSObject
/**
 *  头像的frame
 */
@property (nonatomic, assign, readonly) CGRect iconF;
/**
 *  时间的frame
 */
@property (nonatomic, assign, readonly) CGRect timeF;
/**
 *  正文的frame
 */
@property (nonatomic, assign, readonly) CGRect textF;
/**
 *  cell的高度
 */
@property (nonatomic, assign, readonly) CGFloat cellHeight;

/**
 *  数据模型
 */
@property (nonatomic,strong)Msg *message; // 在。m中 写它的 set方法
@end
