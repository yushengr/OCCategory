//
//  UICollectionViewCell+QYID.m
//  News_Example
//
//  Created by apple on 2019/2/19.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "UICollectionViewCell+QYID.h"

@implementation UICollectionViewCell (QYID)

+ (NSString *)ID {
    return NSStringFromClass(self);
}

@end
