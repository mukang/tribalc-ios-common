//
//  TCImageURLSynthesizer.m
//  individual
//
//  Created by 穆康 on 2016/11/30.
//  Copyright © 2016年 杭州部落公社科技有限公司. All rights reserved.
//

#import "TCImageURLSynthesizer.h"
#import "TCClientConfig.h"

static NSString *const TCPathSeparator = @"://";
NSString *const kTCImageSourceOSS = @"oss";

@implementation TCImageURLSynthesizer

+ (NSURL *)synthesizeImageURLWithPath:(NSString *)path {
    if (!path) return nil;
    
    NSArray *pathParts = [path componentsSeparatedByString:TCPathSeparator];
    NSString *lastPart = [pathParts lastObject];
    
    NSString *imageURLString = [TCCLIENT_RESOURCES_BASE_URL stringByAppendingFormat:@"/%@", lastPart];
    
    return [NSURL URLWithString:imageURLString];
}

+ (NSURL *)synthesizeAvatarImageURLWithUserID:(NSString *)userID needTimestamp:(BOOL)needTimestamp {
    if (!userID) return nil;
    
    NSString *imageURLString = nil;
    if (needTimestamp) {
        int64_t timestamp = [[NSDate date] timeIntervalSince1970] * 1000;
        imageURLString = [TCCLIENT_RESOURCES_BASE_URL stringByAppendingFormat:@"/%@/icon.jpg?x-oss-process=image/resize,m_fill,h_200,w_200&t=%zd", userID, timestamp];
    } else {
        imageURLString = [TCCLIENT_RESOURCES_BASE_URL stringByAppendingFormat:@"/%@/icon.jpg?x-oss-process=image/resize,m_fill,h_200,w_200", userID];
    }
    
    return [NSURL URLWithString:imageURLString];
}

+ (NSString *)synthesizeImagePathWithName:(NSString *)name source:(NSString *)source {
    if (!name) return nil;
    NSAssert(![name hasPrefix:@"/"], @"name（%@）不能以“/”开头", name);
    
    NSString *imagePath = nil;
    if ([source isEqualToString:kTCImageSourceOSS]) {
        imagePath = [NSString stringWithFormat:@"%@%@%@", kTCImageSourceOSS, TCPathSeparator, name];
    } else {
        imagePath = [NSString stringWithFormat:@"/%@", name];
    }
    return imagePath;
}

@end
