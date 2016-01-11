
//
//  ProfileViewController.m
//  OCweibo
//
//  Created by Jusive on 16/1/1.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "ProfileViewController.h"
#import "visitorView.h"
@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    visitorView *vivi = [visitorView new];
//    [vivi setUpinfoImageName:@"visitordiscover_image_profile" title:@"关注一些人，回这里看看有什么惊喜关注一些人，回这里看看有什么惊喜"];
//    self.view = vivi;
    [self setupVisitorView:@"关注一些人，回这里看看有什么惊喜关注一些人，回这里看看有什么惊喜" imageName:@"visitordiscover_image_profile"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
