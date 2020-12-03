//
//  newViewController.m
//  万能跳转-route路由
//
//  Created by upex on 2020/11/3.
//  Copyright © 2020 upex. All rights reserved.
//

#import "newViewController.h"

@interface newViewController ()

@end

@implementation newViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.yellowColor;
    
    NSLog(@"跳转并接受到了参数%@",self.params);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
