//
//  UIView+Extension.h
//  QYNews
//
//  Created by apple on 2019/2/25.
//  Copyright © 2019 Insect. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

+ (instancetype)viewFromXib;
- (UIViewController *)getViewController;

@property (nonatomic , assign) CGFloat qy_width;
@property (nonatomic , assign) CGFloat qy_height;
@property (nonatomic , assign) CGSize  qy_size;
@property (nonatomic , assign) CGFloat qy_x;
@property (nonatomic , assign) CGFloat qy_y;
@property (nonatomic , assign) CGPoint qy_origin;
@property (nonatomic , assign) CGFloat qy_centerX;
@property (nonatomic , assign) CGFloat qy_centerY;
@property (nonatomic , assign) CGFloat qy_right;
@property (nonatomic , assign) CGFloat qy_bottom;

@end
