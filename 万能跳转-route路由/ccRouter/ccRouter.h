//
//  ccRouterManager.h
//  万能跳转-route路由
//
//  Created by upex on 2020/11/3.
//  Copyright © 2020 upex. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ccRouter : NSObject

//arouter://xxxx?className=UPContractController&params=xxx
+ (void)routerPush:(NSString *)urlStr;

@end

NS_ASSUME_NONNULL_END
