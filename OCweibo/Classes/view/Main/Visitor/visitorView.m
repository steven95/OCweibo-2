
//
//  visitorView.m
//  OCweibo
//   1803610419
//  Created by Jusive on 16/1/2.   0510288840b355bae40900e350de33d6
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import "visitorView.h"
#import "visitorTaBarController.h"
#import "OAUthsViewController.h"
@interface visitorView ()
@end
@implementation visitorView

//懒加载
-(UIImageView *)homeIconView{
    if (_homeIconView == nil) {
        _homeIconView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_house"]];
    }
    return _homeIconView;
}

-(UIImageView *)iconView{
    if (_iconView == nil) {
        _iconView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_image_smallicon"]];
    }
    return _iconView;
}
-(UIImageView *)maskIconView{
    if (_maskIconView == nil) {
        _maskIconView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visitordiscover_feed_mask_smallicon"]];
    }
    return _maskIconView;
}
-(UILabel *)messagelable{
    if (_messagelable == nil) {
        _messagelable = [UILabel new];
        _messagelable.text = @"关注一些人，回这里看看有什么惊喜关注一些人，回这里看看有什么惊喜";
        _messagelable.font = [UIFont systemFontOfSize:14];
        _messagelable.textAlignment = NSTextAlignmentCenter;
        _messagelable.numberOfLines = 0;
        
    }
    return _messagelable;
}

-(UIButton *)registerButton{
    if (_registerButton == nil) {
        _registerButton = [UIButton new];
        [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
        [_registerButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
  }
    return _registerButton;
}
-(UIButton *)loginButton{
    if (_loginButton == nil) {
        _loginButton = [UIButton new];
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
       [_loginButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    }
      return _loginButton;
}

-(void)setupUI{
    [self addSubview:self.iconView];
    [self addSubview:self.homeIconView];
    [self addSubview:self.maskIconView];
    [self addSubview:self.messagelable];
    [self addSubview:self.loginButton];
    [self addSubview:self.registerButton];
    for (UIView * v in self.subviews) {
        v.translatesAutoresizingMaskIntoConstraints = NO;
    }
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_iconView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_iconView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:-40]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_homeIconView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_homeIconView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:-20]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_messagelable attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.homeIconView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_messagelable attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.homeIconView attribute:NSLayoutAttributeBottom multiplier:1 constant:36]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_messagelable attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:224]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_messagelable attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:36]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_maskIconView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_maskIconView attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:-20]];
    
    self.backgroundColor = [UIColor colorWithWhite:237.0 / 255.0 alpha:1.0];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_registerButton attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.messagelable attribute:NSLayoutAttributeLeft multiplier:1 constant:0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_registerButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.messagelable attribute:NSLayoutAttributeBottom multiplier:1 constant:16]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_registerButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_registerButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:36]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_loginButton attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.messagelable attribute:NSLayoutAttributeCenterX multiplier:1 constant:100]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_loginButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.messagelable attribute:NSLayoutAttributeBottom multiplier:1 constant:16]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_loginButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:_loginButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:36]];
}

//开启转轮动画
-(void)startAnim{
    CABasicAnimation *anim = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    anim.toValue = @[@(2 * M_PI)];
    anim.repeatCount = MAXFLOAT;
    anim.duration = 20;
    anim.removedOnCompletion = NO;
    [_iconView.layer addAnimation:anim forKey:nil];
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
        
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setupUI];
 }
    return self;
}

@end
