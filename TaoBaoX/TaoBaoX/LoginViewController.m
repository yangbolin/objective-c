//
//  LoginViewController.m
//  TaoBaoX
//
//  Created by yangbolin on 15/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewController.h"
#import "MyTaobaoViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>{
    //在这里声明全局 私有变量
    UITextField *userNameField;
    UITextField *passwdField;
}
@end


@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"登陆";
    
    UILabel* userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 65, 70, 30)];
    userNameLabel.backgroundColor = [UIColor clearColor];
    userNameLabel.text = @"用户名";
    userNameLabel.textColor = [UIColor blackColor];
    
    
    [self.view addSubview:userNameLabel];
    
    userNameField = [[UITextField alloc] initWithFrame:CGRectMake(85.0f, 60.0f, 190.0f, 40.0f)];
    [userNameField setBorderStyle:UITextBorderStyleRoundedRect]; //外框类型
    userNameField.placeholder = @"用户名"; //默认显示的字
    userNameField.secureTextEntry = NO; //是否以密码形式显示
    userNameField.autocorrectionType = UITextAutocorrectionTypeNo;
    userNameField.autocapitalizationType = UITextAutocapitalizationTypeNone;
    userNameField.returnKeyType = UIReturnKeyDone;
    userNameField.clearButtonMode = UITextFieldViewModeWhileEditing; //编辑时会出现个修改X
    userNameField.delegate = self;
    userNameField.keyboardType = UIKeyboardTypeDefault;
    userNameField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    userNameField.autoresizingMask = UIViewAutoresizingFlexibleHeight;//自适应高度
    [self.view addSubview:userNameField];
    
    
    UILabel* passwdLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 120, 70, 30)];
    passwdLabel.backgroundColor = [UIColor clearColor];
    passwdLabel.text = @"密码";
    passwdLabel.textColor = [UIColor blackColor];
    [self.view addSubview:passwdLabel];
    
    passwdField = [[UITextField alloc] initWithFrame:CGRectMake(85.0f, 115.0f, 190.0f, 40.0f)];
    [passwdField setBorderStyle:UITextBorderStyleRoundedRect]; //外框类型
    passwdField.placeholder = @"密码"; //默认显示的字
    passwdField.secureTextEntry = YES; //密码类型
    [self.view addSubview:passwdField];
    
    
    UIButton *loginButton = [[UIButton alloc] initWithFrame:CGRectMake(85.0f, 170.0f, 190.0f, 40.0f)];
    loginButton.backgroundColor = [UIColor orangeColor];
    [loginButton setTitle:@"登陆" forState:UIControlStateNormal];                //设置正常状态下 Button标题
    [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; //设置正常状态下 Button标题颜色
    //addTarget:self 设置响应点击事件的对象
    //action:@selector(onTextFieldButtonClicked:) 设置响应点击事件的对象的方法函数，我们在下面会声明这个函数
    [loginButton addTarget:self action:@selector(onLoginButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginButton];
}

- (void)onLoginButtonClicked{
    NSLog(@"ButtonClicked");
    NSString* userName = userNameField.text;
    NSString* passwd = passwdField.text;
    if([userName isEqualToString:@"nuaayangbolin"] && [passwd isEqualToString:@"Hello123456"]) {
        // 页面跳转
        hasLogined = 1;
        MyTaobaoViewController* myTaobao = [[MyTaobaoViewController alloc] init];
        [self.navigationController pushViewController:myTaobao animated:YES];
        return;
    } else {
        // 校验不过
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"登陆提示" message:@"用户名或者密码错误" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {}];
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:^{}];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (int) hasLogined {
    return hasLogined;
}

@end