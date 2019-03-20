//
//  UITableViewCell+QYID.m
//  News_Example
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "UITableViewCell+QYID.h"

@implementation UITableViewCell (QYID)

+ (NSString *)ID {
    return NSStringFromClass(self);
}

@end
