
//
//  OAUths.m
//  OCweibo
//
//  Created by Jusive on 16/1/4.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "OAUthsViewController.h"
#import "sharedTools.h"
@interface OAUthsViewController ()<UIWebViewDelegate>

@property(nonatomic,strong)UIWebView *webView;
@end
@implementation OAUthsViewController

-(UIWebView *)webView{
    if (_webView == nil) {
        _webView = [[UIWebView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    }
    return _webView;
}
-(void)loadView{
    self.view = _webView;
    _webView.delegate = self;
    self.navigationItem.title = @"Jusive";
    UIBarButtonItem *leftButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"关闭" style:UIBarButtonItemStylePlain target:self action:@selector(close)];
    self.navigationItem.leftBarButtonItem = leftButtonItem;
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"自动填充" style:UIBarButtonItemStylePlain target:self action:@selector(autowrite)];
    self.navigationItem.rightBarButtonItem = rightButtonItem;
    
}

-(void)viewDidLoad{
    [super viewDidLoad];
    NSURLRequest *urlR = [NSURLRequest requestWithURL:[sharedTools oauthURL]];
    [self.webView loadRequest:urlR];
}
-(void)close{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)autowrite{
    NSString *js = [NSString stringWithFormat:@"document.getElementById'%@'",@"15664477578"];
    NSString *jss = [NSString stringWithFormat:@"document.getElementById'%@'",@"shiyi0809"];
    NSString *jcs =[NSString stringWithFormat:@"%@%@",js,jss];
    [self.webView stringByEvaluatingJavaScriptFromString:jcs];
    
}
@end
