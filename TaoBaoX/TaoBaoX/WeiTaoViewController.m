//
//  WeiTaoViewController.m
//  first-lesson-job
//
//  Created by yangbolin on 15/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WeiTaoViewController.h"

@implementation WeiTaoViewController

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
    self.title = @"微淘";
    self.view.backgroundColor = [UIColor colorWithRed:0.4 green:0.4 blue:0 alpha:0.4];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end