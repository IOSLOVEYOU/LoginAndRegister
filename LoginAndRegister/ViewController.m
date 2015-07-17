//
//  ViewController.m
//  LoginAndRegister
//
//  Created by lixy on 15/7/13.
//  Copyright (c) 2015年 lixy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView* _loginView;
    UIView* _registView;
    
    UITextField* _textField1;
    UITextField* _textField2;
    UITextField* _textField3;
    UITextField* _textField4;
    UITextField* _textField5;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor =[UIColor whiteColor];
    //创建一个注册页面
    [self createRegistView];
    //创建一个登陆页面
    [self createLoginView];
}

//创建一个注册页面
- (void)createRegistView
{
    //创建UIView
    _registView = [[UIView alloc] initWithFrame:self.view.frame];
    _registView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_registView];
    
    //创建label
    UILabel* label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 30)];
    label1.text = @"注册页面";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.font = [UIFont boldSystemFontOfSize:25];
    [_registView addSubview:label1];
    
    UILabel* label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 100, 30)];
    label2.text = @"账       号:";
    label2.textAlignment = NSTextAlignmentCenter;
    [_registView addSubview:label2];
    
    UILabel* label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 100, 30)];
    label3.text = @"密       码:";
    label3.textAlignment = NSTextAlignmentCenter;
    [_registView addSubview:label3];
    
    UILabel* label4 = [[UILabel alloc] initWithFrame:CGRectMake(20, 160, 100, 30)];
    label4.text = @"确认密码:";
    label4.textAlignment = NSTextAlignmentCenter;
    [_registView addSubview:label4];
    
    //创建textField
    _textField3 = [[UITextField alloc] initWithFrame:CGRectMake(120, 80, 150, 30)];
    _textField3.borderStyle = UITextBorderStyleRoundedRect;
    _textField3.placeholder = @"请输入账号";
    _textField3.clearButtonMode = UITextFieldViewModeAlways;
    [_registView addSubview:_textField3];
    
    _textField4 = [[UITextField alloc] initWithFrame:CGRectMake(120, 120, 150, 30)];
    _textField4.borderStyle = UITextBorderStyleRoundedRect;
    _textField4.placeholder = @"请输入密码";
    _textField4.clearButtonMode = UITextFieldViewModeAlways;
    _textField4.secureTextEntry = YES;
    [_registView addSubview:_textField4];
    
    _textField5 = [[UITextField alloc] initWithFrame:CGRectMake(120, 160, 150, 30)];
    _textField5.borderStyle = UITextBorderStyleRoundedRect;
    _textField5.placeholder = @"请输入确认密码";
    _textField5.clearButtonMode = UITextFieldViewModeAlways;
    _textField5.secureTextEntry = YES;
    [_registView addSubview:_textField5];
    
    //创建button
    UIButton* button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(40, 220, 100, 30);
    button1.backgroundColor = [UIColor greenColor];
    [button1 setTitle:@"返回" forState:UIControlStateNormal];
    button1.tag = 1;
    button1.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [button1 addTarget:self action:@selector(registButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_registView addSubview:button1];
    
    UIButton* button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(180, 220, 100, 30);
    [button2 setTitle:@"注册" forState:UIControlStateNormal];
    button2.backgroundColor = [UIColor greenColor];
    button2.tag = 2;
    button2.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [button2 addTarget:self action:@selector(registButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_registView addSubview:button2];
}

//创建一个登陆页面
- (void)createLoginView
{
    //创建UIView
    _loginView = [[UIView alloc] initWithFrame:self.view.frame];
    _loginView.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:_loginView];
    
    //创建label
    UILabel* label1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 30)];
    label1.text = @"登陆页面";
    label1.textAlignment = NSTextAlignmentCenter;
    label1.font = [UIFont boldSystemFontOfSize:25];
    [_loginView addSubview:label1];
    
    UILabel* label2 = [[UILabel alloc] initWithFrame:CGRectMake(20, 80, 100, 30)];
    label2.text = @"帐   号:";
    label2.textAlignment = NSTextAlignmentCenter;
    [_loginView addSubview:label2];
    
    UILabel* label3 = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 100, 30)];
    label3.text = @"密    码:";
    label3.textAlignment = NSTextAlignmentCenter;
    [_loginView addSubview:label3];
    
    //创建textField
    _textField1 = [[UITextField alloc] initWithFrame:CGRectMake(120, 80, 150, 30)];
    _textField1.borderStyle = UITextBorderStyleRoundedRect;
    _textField1.placeholder = @"请输入账号";
    _textField1.clearButtonMode = UITextFieldViewModeAlways;
    [_loginView addSubview:_textField1];
    
    _textField2 = [[UITextField alloc] initWithFrame:CGRectMake(120, 120, 150, 30)];
    _textField2.borderStyle = UITextBorderStyleRoundedRect;
    _textField2.placeholder = @"请输入密码";
    _textField2.clearButtonMode = UITextFieldViewModeAlways;
    _textField2.secureTextEntry = YES;
    [_loginView addSubview:_textField2];
    
    //创建button
    UIButton* button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(40, 170, 240, 40);
    button1.backgroundColor = [UIColor greenColor];
    [button1 setTitle:@"登录" forState:UIControlStateNormal];
    button1.tag = 100;
    button1.titleLabel.font = [UIFont boldSystemFontOfSize:20];
    [button1 addTarget:self action:@selector(loginButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_loginView addSubview:button1];
    
    UIButton* button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.frame = CGRectMake(180, 230, 100, 30);
    button2.backgroundColor = [UIColor greenColor];
    [button2 setTitle:@"还没账号?去注册" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button2.tag = 200;
    button2.titleLabel.font = [UIFont boldSystemFontOfSize:13];
    [button2 addTarget:self action:@selector(loginButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_loginView addSubview:button2];
}

#pragma mark - Action
//button的点击事件
- (void)loginButtonClick:(UIButton* )btn
{
    switch (btn.tag) {
        case 100:
        {
            //点击了登陆
            NSLog(@"点击了登陆");
            
        }
            break;
        case 200:
        {
            //点击了去注册
            NSLog(@"点击了去注册");
            //把注册页面放到最上面
            //添加动画
            [self.view bringSubviewToFront:_registView];
            [UIView beginAnimations:nil context:nil];
            [UIView setAnimationDuration:2];//设置动画持续的时间
            /*
             UIViewAnimationCurveEaseInOut,         // slow at beginning and end
             UIViewAnimationCurveEaseIn,            // slow at beginning
             UIViewAnimationCurveEaseOut,           // slow at end
             UIViewAnimationCurveLinear
             */
            [UIView  setAnimationCurve: UIViewAnimationCurveEaseInOut];//设置动画曲线，控制动画速度
            [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:YES];//设置动画方式，并指出动画发生的位置
            [UIView commitAnimations];//提交UIView动画
            
            /*
             [UIView transitionWithView:self.view
             duration:1.0
             options:UIViewAnimationOptionTransitionCurlUp
             animations:^{ }
             completion:NULL];
             */
            
        }
            break;
            
        default:
            break;
    }
}

- (void)registButtonClick:(UIButton* )btn
{
    if (btn.tag == 1)
    {
        NSLog(@"返回");
        //把登陆页面方法放到最上面
        [self.view bringSubviewToFront:_loginView];
    }
    if (btn.tag == 2)
    {
        NSLog(@"注册");
        NSString* info = @"";
        //注册的逻辑：1.判断所有输入不能为空  2.判断密码是否一致 3.处理成功后的事情
        if (_textField3.text.length != 0 && _textField4.text.length != 0 && _textField5.text.length != 0) {
            //判断字符串相等的方法
            if ([_textField4.text isEqualToString:_textField5.text])
            {
                [self.view bringSubviewToFront:_loginView];
                return;
            }else
            {
                info = @"密码不一致";
            }
        }else
        {
            info = @"所有输入不能为空";
        }
        
        //警告框 UIAlertView:UIView
        UIAlertView* alertView = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:info delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        //警告框的现实方法
        [alertView show];
    }
}
@end
