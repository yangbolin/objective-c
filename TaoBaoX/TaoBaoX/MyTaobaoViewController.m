//
//  MyTaobaoViewController.m
//  first-lesson-job
//
//  Created by yangbolin on 15/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MyTaobaoViewController.h"
#import "LoginViewController.h"

@implementation MyTaobaoViewController

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
    self.title = @"我的淘宝";
    
    self.view.backgroundColor = [UIColor whiteColor];
    if([LoginViewController hasLogined]) {
        UILabel* myTaobaoText = [[UILabel alloc] initWithFrame:CGRectMake(15, 65, 270, 30)];
        myTaobaoText.backgroundColor = [UIColor clearColor];
        myTaobaoText.text = @"欢迎nuaayangbolin";
        myTaobaoText.textColor = [UIColor blackColor];
        [self.view addSubview:myTaobaoText];
    } else {
        UIViewController* login = [[LoginViewController alloc] init];
        [self.navigationController pushViewController:login animated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end