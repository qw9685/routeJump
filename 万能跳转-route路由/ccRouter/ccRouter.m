//
//  ccRouterManager.m
//  万能跳转-route路由
//
//  Created by upex on 2020/11/3.
//  Copyright © 2020 upex. All rights reserved.
//

#import "ccRouter.h"
#import "ccRouter+Category.h"
#import <objc/runtime.h>
#import <UIKit/UIKit.h>

@implementation ccRouter

//跳转
+ (void)routerPush:(NSString *)urlStr {
    NSDictionary *dic = [ccRouter queryItems:[NSURL URLWithString:urlStr]];
    NSString *class =[NSString stringWithFormat:@"%@", dic[@"className"]];
    const char *className = [class cStringUsingEncoding:NSASCIIStringEncoding];
    
    // 从一个字串返回一个类
    Class nClass = objc_getClass(className);
    
    //创建对象、参数赋值
    id instance = [[nClass alloc] init];
    [ccRouter setParamWith:dic instance:instance];
    
    UIViewController* currentVc = [ccRouter currentVc];
    if (currentVc.navigationController) {
        [currentVc.navigationController pushViewController:instance animated:YES];
    }else{
        [currentVc presentViewController:instance animated:YES completion:nil];
    }
}

//当前显示的控制器
+ (UIViewController *)currentVc {
    
    UIViewController *topC = [ccRouter topViewController:[[UIApplication sharedApplication].keyWindow rootViewController]];
    while (topC.presentedViewController) {
        topC = [self topViewController:topC.presentedViewController];
    }
    return topC;
}

+ (UIViewController *)topViewController:(UIViewController *)controller {
    if ([controller isKindOfClass:[UINavigationController class]]) {
        return [ccRouter topViewController:[(UINavigationController *)controller topViewController]];
    } else if ([controller isKindOfClass:[UITabBarController class]]) {
        return [ccRouter topViewController:[(UITabBarController *)controller selectedViewController]];
    } else {
        return controller;
    }
}
@end
