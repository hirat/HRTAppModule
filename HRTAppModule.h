//
//  HRTAppModule.h
//  HRTAppModule
//
//  Created by Hirat on 15/11/4.
//  Copyright (c) 2015年 Hirat. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol HRTAppModule <NSObject>

@required

/// 通过这个 NavigationController弹出子视图
@property (nonatomic, strong) UINavigationController* navigationController;

/// 该模块对应的所有 route
@property(strong, nonatomic, readonly) NSMutableDictionary* routes;

/// 该模块对应的 rootViewController
@property(strong, nonatomic, readonly) UIViewController* rootViewController;

/**
 *  单例
 *
 *  @return 模块单例
 */
+ (instancetype)sharedInstance;

/**
 *  将 url 与 UIViewController 关联起来
 *
 *  @param route           url
 *  @param controllerClass UIViewController 对应的 Class
 */
- (void)map:(NSString*)route toControllerClass:(Class)controllerClass;

/**
 *  url 对应的 UIViewController
 *
 *  @param route url
 *
 *  @return VC
 */
- (UIViewController*)viewControllerForRoute:(NSString*)route;

@end

