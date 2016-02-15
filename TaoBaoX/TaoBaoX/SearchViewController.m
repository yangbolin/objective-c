//
//  SearchViewController.m
//  first-lesson-job
//
//  Created by yangbolin on 15/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SearchViewController.h"

@implementation SearchViewController

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
    self.title = @"搜索";
    self.view.backgroundColor = [UIColor colorWithRed:0.6 green:0.6 blue:0 alpha:0.6];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end