//
//  GraphicView.m
//  AnimatedCircleDemo
//
//  Created by xh on 16/5/25.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "GraphicView.h"

@implementation GraphicView
- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawImage:context];
}

- (void)drawImage:(CGContextRef)context {
    UIImage *img = [UIImage imageNamed:@"image_1"];
    CGContextSaveGState(context);
    
    CGContextDrawImage(context, CGRectMake(0, 0, 50, 50), img.CGImage);
    
    CGContextRestoreGState(context);
    
}

@end
