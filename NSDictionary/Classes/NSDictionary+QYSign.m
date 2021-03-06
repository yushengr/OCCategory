//
//  NSDictionary+QYSign.m
//  Chest_Example
//
//  Created by apple on 2019/3/8.
//  Copyright © 2019 704861917@qq.com. All rights reserved.
//

#import "NSDictionary+QYSign.h"

#import <CocoaSecurity.h>

@implementation NSDictionary (QYSign)

- (NSString *)sign {

    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    NSArray *keys = [self.allKeys sortedArrayUsingDescriptors:[NSArray arrayWithObjects:sortDescriptor,nil]];
    NSString *signKey = @"qszhuanvaz3TxpWtmHkioMwjpeYGixFDQSzhUan";

    NSMutableString *sign = [NSMutableString string];

    for (int i = 0; i < keys.count; i++) {

        NSString *key = keys[i];
        NSString *value = self[key];
        NSMutableString *attach = [NSMutableString stringWithFormat:@"%@=%@", key, value];
        if (i != keys.count - 1) {
            [attach appendString:@"&"];
        }else {
            [attach appendString:signKey];
        }
        [sign appendString:attach];
    }
    CocoaSecurityResult *md5 = [CocoaSecurity md5:sign];
    return md5.hexLower;
}

@end
