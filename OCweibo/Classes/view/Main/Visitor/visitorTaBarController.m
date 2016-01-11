//
//  visitorTaBarController.m
//  OCweibo
//
//  Created by Jusive on 16/1/1.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "visitorTaBarController.h"
#import "visitorView.h"
#import "OAUthsViewController.h"

@interface visitorTaBarController ()//<visitorViewDetegate>
@property (nonatomic,strong)visitorView *visi;
@end

@implementation visitorTaBarController

-(void)loadView{
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"注册" style:UIBarButtonItemStylePlain target:self action:@selector(visitorViewDidRegister)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"登陆" style:UIBarButtonItemStylePlain target:self action:@selector(visitorViewDidLogin)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
    visitorView *vivi = [visitorView new];
//    self.visi.detegate = self;
    self.visi = vivi;
    [vivi.loginButton addTarget:self action:@selector(visitorViewDidLogin) forControlEvents:UIControlEventTouchUpInside];
    [vivi.registerButton addTarget:self action:@selector(visitorViewDidRegister) forControlEvents:UIControlEventTouchUpInside];
    self.view = vivi;
}

-(UIViewController *)setupVisitorView{
    OAUthsViewController *OA = [OAUthsViewController new];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:OA];
      OA.view.backgroundColor = [UIColor colorWithWhite:0.95 alpha:1];
     [self presentViewController:nav animated:YES completion:nil];
    return self;
    
}

- (void)setupVisitorView:(NSString *)title imageName:(NSString *)imageName
{
    self.visi.messagelable.text = title;
    NSString *imageNames = @"visitordiscover_feed_image_house";
    while (imageNames == imageName ) {
        [self.visi startAnim];
        return;
    }
    self.visi.homeIconView.hidden = YES;
    self.visi.iconView.image = [UIImage imageNamed:imageName];
}


-(void)visitorViewDidRegister{
    NSLog(@"注册");
}
-(void)visitorViewDidLogin{
    
    [self setupVisitorView];
}
@end
