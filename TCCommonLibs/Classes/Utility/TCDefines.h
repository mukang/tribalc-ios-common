//
//  TCDefines.h
//  Pods
//
//  Created by 穆康 on 2017/3/31.
//
//

#import <Foundation/Foundation.h>

/** 用户位置的经纬度key */
extern NSString *const TCBuluoUserLocationCoordinateKey;
/** URL */
extern NSString *const TCClientBaseURLKey;
/** 需要认证信息或认证信息失败的通知 */
extern NSString *const TCClientUnauthorizedNotification;
/** 需要强制更新 */
extern NSString *const TCClientNeedForceUpdateNotification;
/** 客服电话 */
extern NSString *const TCCommonServiceTel;

#ifndef _TCDefines_h
#define _TCDefines_h

// 颜色
#define TCRGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

// 随机色
#define TCRandomColor TCRGBColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))

// 带透明度的颜色
#define TCARGBColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

//通用颜色
#define TCBlackColor TCRGBColor(34, 34, 34)
#define TCSeparatorLineColor TCRGBColor(221, 221, 221)
#define TCGrayColor TCRGBColor(130, 130, 130)
#define TCLightGrayColor TCRGBColor(186, 186, 186)
#define TCBackgroundColor TCRGBColor(242, 242, 242)

/** 屏幕宽度 */
#define TCScreenWidth [UIScreen mainScreen].bounds.size.width

/** 屏幕高度 */
#define TCScreenHeight [UIScreen mainScreen].bounds.size.height

#define TCRealValue(value) ((value)/375.0f*TCScreenWidth)

// 打印输出
#ifdef DEBUG // 处于开发阶段
#define TCLog(...) NSLog(__VA_ARGS__)
#else // 处于发布阶段
#define TCLog(...)
#endif


#define WeakObj(o) try{}@finally{} __weak typeof(o) o##Weak = o;
#define StrongObj(o) autoreleasepool{} __strong typeof(o) o = o##Weak;

#endif

@interface TCDefines : NSObject

@end
