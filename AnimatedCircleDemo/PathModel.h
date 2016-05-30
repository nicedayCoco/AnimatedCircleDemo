//
//  PathModel.h
//  AnimatedCircleDemo
//
//  Created by xh on 16/5/30.
//  Copyright © 2016年 xh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface PathModel : NSObject

@property(nonatomic,assign)CGMutablePathRef path;
@property(nonatomic,strong)UIColor *color;
@property(nonatomic,assign)CGFloat lineWidth;

@end
