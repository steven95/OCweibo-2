//
//  visitorView.h
//  OCweibo
//
//  Created by Jusive on 16/1/2.
//  Copyright © 2016年 Jusive. All rights reserved.
//

#import <UIKit/UIKit.h>

//@protocol visitorViewDetegate <NSObject>
//@optional
//
//@required
//
//@end
@interface visitorView : UIView
-(void)startAnim;
@property (nonatomic,strong) UIImageView *iconView;
@property (nonatomic,strong) UIImageView *homeIconView;
@property (nonatomic,strong) UILabel *messagelable;
@property (nonatomic,strong) UIButton *registerButton;
@property (nonatomic,strong) UIImageView *maskIconView;
@property (nonatomic,strong) UIButton *loginButton;

//@property (nonatomic,weak) id <visitorViewDetegate>detegate;
@end
