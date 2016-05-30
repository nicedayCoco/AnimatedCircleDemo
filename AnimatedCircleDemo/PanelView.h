//
//  PanelView.h
//  AnimatedCircleDemo
//
//  Created by xh on 16/5/30.
//  Copyright © 2016年 xh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PanelView : UIView

@property(nonatomic,strong) UIColor *drawColor;
@property(nonatomic,assign) CGFloat lineWidth;

- (void)undo;

- (void)clearView;

@end
