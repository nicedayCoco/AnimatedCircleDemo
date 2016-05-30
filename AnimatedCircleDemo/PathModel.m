//
//  PathModel.m
//  AnimatedCircleDemo
//
//  Created by xh on 16/5/30.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "PathModel.h"

@implementation PathModel

- (void)dealloc
{
    CGPathRelease(_path);
}

- (void)setPath:(CGMutablePathRef)path {
    CGPathRetain(path);
    _path = path;
}

@end
