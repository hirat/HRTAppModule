//
//  UIViewController+HRTAppModule.m
//  HRTAppModule
//
//  Created by Hirat on 15/11/4.
//  Copyright (c) 2015年 Hirat. All rights reserved.
//

#import "UIViewController+HRTAppModule.h"
#import <objc/runtime.h>

@implementation UIViewController (HRTAppModule)

static char kHRTAppModuleAssociatedParamsObjectKey;

- (void)setParameters:(NSDictionary*)paramsDictionary
{
    objc_setAssociatedObject(self, &kHRTAppModuleAssociatedParamsObjectKey, paramsDictionary,
                             OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSDictionary*)parameters
{
    return objc_getAssociatedObject(self, &kHRTAppModuleAssociatedParamsObjectKey);
}


@end
