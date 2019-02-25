//
//  UIView+Extension.m
//  QYNews
//
//  Created by apple on 2019/2/25.
//  Copyright © 2019 Insect. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)

+ (instancetype)viewFromXib {
     return [[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

@end
