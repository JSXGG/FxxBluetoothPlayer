//
//  FBdefine.h
//  FxxBluetoothPlayer
//
//  Created by Baird-weng on 2017/4/13.
//  Copyright © 2017年 Baird-weng. All rights reserved.
//

#ifndef FBdefine_h
#define FBdefine_h
#import "UIColor+toolColor.h"
#import "FBAFNetworking.h"
#import "BaseHelper.h"
#import "UIImageView+WebCache.h"
#define NAVIGARIONBLACKCOLOR [UIColor colorWithHexString:@"2196F3"]
#define NAVIGARIONBTITLECOLOR [UIColor whiteColor]
#define FontName            @"Helvetica Neue"
#define BoldFontName        @"Helvetica-Bold"
#define DefaultBackgroudColor [UIColor colorWithWhite:0.941 alpha:1.000]

// Main Screen
#define SCREEN_HEIGHT [[UIScreen mainScreen]bounds].size.height
#define SCREEN_WIDTH [[UIScreen mainScreen]bounds].size.width
#define ORIGINAL_MAX_WIDTH 640.0f
#define KEYWINDOW [[[UIApplication sharedApplication] delegate] window]

// RGB Color
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)
#define ScreenHeight [[UIScreen mainScreen] bounds].size.height/*获取设备的高度*/
#define ScreenWidth [[UIScreen mainScreen] bounds].size.width/*获取设备的宽度*/
#import "UIViewController+RESideMenu.h"
#endif /* FBdefine_h */
