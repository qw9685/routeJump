//
//  ViewController.m
//  万能跳转-route路由
//
//  Created by upex on 2020/11/3.
//  Copyright © 2020 upex. All rights reserved.
//

#import "ViewController.h"
#import "ccRouter.h"
#import "newViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton* button = [[UIButton alloc] initWithFrame:CGRectMake(200, 200, 100, 50)];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setTitle:@"router跳转" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)click{
    [ccRouter routerPush:@"//arouter://xxxx?className=newViewController&params=xxx"];
}
@end
