//
//  NSObject+ccRouter.h
//  万能跳转-route路由
//
//  Created by upex on 2020/11/3.
//  Copyright © 2020 upex. All rights reserved.
//

#import "ccRouter+Category.h"

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (ccRouter)

//对象赋值
+ (id)setParamWith:(NSDictionary *)dic instance:(id)instance;

//检测对象是否存在该属性
+ (BOOL)checkIsExistPropertyWithInstance:(id)instance verifyPropertyName:(NSString *)verifyPropertyName;

//路径解析成字典
+ (NSDictionary<NSString *, NSString *> *)queryItems:(NSURL*)url;

@end

NS_ASSUME_NONNULL_END
