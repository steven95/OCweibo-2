
//
//  HomeViewController.m
//  OCweibo
//
//  Created by Jusive on 16/1/1.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "HomeViewController.h"
#import "visitorView.h"
@interface HomeViewController ()
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupVisitorView:@"关注一些人，回这里看看有什么惊喜" imageName:@ "visitordiscover_feed_image_house"];
//    visitorView *vivi = [visitorView new];
//    
//    [vivi setUpinfoImageName:@ "visitordiscover_feed_image_house" title:@"关注一些人，回这里看看有什么惊喜"];
//     self.view = vivi;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self ==[super initWithCoder:aDecoder]) {
    }
    return self;
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
