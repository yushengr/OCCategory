//
//  UIView+Extension.m
//  QYNews
//
//  Created by apple on 2019/2/25.
//  Copyright © 2019 Insect. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

- (CGFloat)qy_x {

    return self.frame.origin.x;
}

- (void)setQy_x:(CGFloat)qy_x {

    CGRect qyFrame = self.frame;
    qyFrame.origin.x = qy_x;
    self.frame = qyFrame;
}

- (CGFloat)qy_y {

    return self.frame.origin.y;
}

- (void)setQy_y:(CGFloat)qy_y {

    CGRect qyFrame = self.frame;
    qyFrame.origin.y = qy_y;
    self.frame = qyFrame;
}

- (CGPoint)qy_origin {

    return self.frame.origin;
}

- (void)setQy_origin:(CGPoint)qy_origin {

    CGRect qyPoint = self.frame;
    qyPoint.origin = qy_origin;
    self.frame = qyPoint;
}

- (CGFloat)qy_width {

    return self.frame.size.width;
}

- (void)setQy_width:(CGFloat)qy_width {

    CGRect qyFrame = self.frame;
    qyFrame.size.width = qy_width;
    self.frame = qyFrame;
}

-(CGFloat)qy_height{

    return self.frame.size.height;
}

-(void)setQy_height:(CGFloat)qy_height{

    CGRect qyFrame = self.frame;
    qyFrame.size.height = qy_height;
    self.frame = qyFrame;
}

-(CGSize)qy_size{

    return self.frame.size;
}

-(void)setQy_size:(CGSize)qy_size{

    CGRect qyFrame = self.frame;
    qyFrame.size = qy_size;
    self.frame = qyFrame;
}

-(CGFloat)qy_centerX{

    return self.center.x;
}

-(void)setQy_centerX:(CGFloat)qy_centerX{

    CGPoint qyPoint = self.center;
    qyPoint.x = qy_centerX;
    self.center = qyPoint;
}

-(CGFloat)qy_centerY{

    return self.center.y;
}

-(void)setQy_centerY:(CGFloat)qy_centerY{

    CGPoint qyPoint = self.center;
    qyPoint.y = qy_centerY;
    self.center = qyPoint;
}

- (CGFloat)qy_right{

    return CGRectGetMaxX(self.frame);
}

- (CGFloat)qy_bottom{

    return CGRectGetMaxY(self.frame);
}

- (void)setQy_right:(CGFloat)qy_right{

    self.qy_x = qy_right - self.qy_width;
}

- (void)setQy_bottom:(CGFloat)qy_bottom{

    self.qy_y = qy_bottom - self.qy_height;
}

+ (instancetype)viewFromXib {
     return [[NSBundle bundleForClass:self.classForCoder]loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

- (UIViewController *)getViewController {
    for (UIView *view = self; view; view = view.superview) {
        UIResponder *nextResponder = [view nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

@end
