//
//  MaintabBarViewController.m
//  OCweibo
//
//  Created by Jusive on 16/1/1.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "MaintabBarViewController.h"
#import "MessageTableViewController.h"
#import "HomeViewController.h"
#import "ProfileViewController.h"
#import "DiscoverViewController.h"
@interface MaintabBarViewController ()
@end

@implementation MaintabBarViewController
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
     [self addButton];
//    [self.tabBar bringSubviewToFront:_add];
}
- (void)viewDidLoad {
    [super viewDidLoad];

    [self addChildViewController];
    
    // Do any additional setup after loading the view.
}
-(void)VC:(UIViewController *)VC title:(NSString *)title imageName:(NSString *)imageName{
    self.tabBar.tintColor = [UIColor orangeColor];
    VC.title = title;
    VC.tabBarItem.image = [UIImage imageNamed:imageName];
    UINavigationController * Nav = [[UINavigationController alloc]initWithRootViewController:VC];
    [self addChildViewController:Nav];
}

-(void)addChildViewController{
    MessageTableViewController *mess = [MessageTableViewController new];
    HomeViewController *home = [HomeViewController new];
    ProfileViewController *profile = [ProfileViewController new];
    DiscoverViewController *discover = [DiscoverViewController new];
    
    [self VC:home title:@"首页" imageName:@"tabbar_home"];
    [self VC:mess title:@"消息" imageName:@"tabbar_message_center"];
    [self VC:nil title:nil imageName:nil];
    [self VC:profile title:@"我" imageName:@"tabbar_profile"];
    [self VC:discover title:@"发现" imageName:@"tabbar_discover"];
}
-(void)addButton{
    NSInteger count = self.childViewControllers.count;
    CGFloat w = self.tabBar.frame.size.width / (CGFloat)count -1;
    UIButton *add = [[UIButton alloc]initWithFrame:CGRectInset(self.tabBar.bounds, 2 * w, -3)];
    [self.tabBar addSubview:add];
    [add setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
    [add setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
    [add addTarget:self action:@selector(clickComposedButton) forControlEvents:UIControlEventTouchUpInside];

}
-(void)clickComposedButton{
    NSLog(@"被点了");
}

@end
