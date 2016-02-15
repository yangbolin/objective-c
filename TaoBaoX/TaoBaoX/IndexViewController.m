//
//  IndexViewController.m
//  first-lesson-job
//
//  Created by yangbolin on 15/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "IndexViewController.h"

@implementation IndexViewController

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
    self.title = @"首页";
    self.view.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
