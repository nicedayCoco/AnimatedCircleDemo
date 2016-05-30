
//
//  PanelView.m
//  AnimatedCircleDemo
//
//  Created by xh on 16/5/30.
//  Copyright © 2016年 xh. All rights reserved.
//

#import "PanelView.h"
#import "PathModel.h"
@interface PanelView ()

@property(nonatomic,assign)CGMutablePathRef drawPath;
@property(nonatomic,strong)NSMutableArray *paths;

@end

@implementation PanelView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self) {
        self.drawColor = [UIColor blackColor];
        self.lineWidth = 5.0f;
        self.backgroundColor = [UIColor whiteColor];
        
    }
    return self;
}


- (void)undo
{
    [self.paths removeLastObject];
    [self setNeedsDisplay];
}

- (void)clearView
{
    [self.paths removeAllObjects];
    [self setNeedsDisplay];
    
}
#pragma - 绘制方法
- (void)drawRect:(CGRect)rect
{
    for (PathModel *p in self.paths) {
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        [p.color setStroke];
        CGContextSetLineWidth(ctx, p.lineWidth);
        CGContextAddPath(ctx, p.path);
        CGContextDrawPath(ctx, kCGPathStroke);
    }
    
    if (self.drawPath != nil) {
        
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        [self.drawColor set];
        CGContextSetLineWidth(ctx, self.lineWidth);
        CGContextAddPath(ctx, self.drawPath);
        CGContextDrawPath(ctx, kCGPathStroke);
        
    }
    
}

#pragma matk - touch
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    
    self.drawPath = CGPathCreateMutable();
    CGPathMoveToPoint(self.drawPath, NULL, p.x, p.y);
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    
    CGPathAddLineToPoint(self.drawPath, NULL, p.x,p.y);
    [self setNeedsDisplay];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (self.paths == nil) {
        self.paths = [NSMutableArray array];
    }
    
    PathModel *pathModel = [[PathModel alloc]init];
    pathModel.path = self.drawPath;
    pathModel.color = self.drawColor;
    pathModel.lineWidth = self.lineWidth;
    
    [self.paths addObject:pathModel];
    
    CGPathRelease(self.drawPath);
    self.drawPath = nil;
}



@end
