//
//  NSBundle+Category.m
//  Pods
//
//  Created by 穆康 on 2017/3/30.
//
//

#import "NSBundle+Category.h"

@implementation NSBundle (Category)

+ (NSBundle *)tc_commonLibsBundle {
    return [self bundleWithURL:[self tc_commonLibsBundleURL]];
}

+ (NSBundle *)tc_commonLibsBundleURL {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    return [bundle URLForResource:@"TCCommonLibs" withExtension:@"bundle"];
}

@end
