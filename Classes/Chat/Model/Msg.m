//
//  Msg.m
//  LUITabBarViewController
//
//  Created by JunLee on 14/11/7.
//  Copyright (c) 2014年 Oran Wu. All rights reserved.
//

#import "Msg.h"

@implementation Msg

+ (instancetype)msgWithDict:(NSDictionary *)dict
{
    return  [[self alloc] initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init])
    {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
@end
