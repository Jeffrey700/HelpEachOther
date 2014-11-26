//
//  Msg.h
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    MJMessageTypeMe = 0, // 自己发的
    MJMessageTypeOther = 1  // 别人发的
} MessageType;

@interface Msg : NSObject
/**
 *  聊天内容
 */
@property (nonatomic, copy) NSString *text;
/**
 *  发送时间
 */
@property (nonatomic, copy) NSString *time;
/**
 *  信息的类型
 */
@property (nonatomic, assign) MessageType type;

+ (instancetype)msgWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;
@end
