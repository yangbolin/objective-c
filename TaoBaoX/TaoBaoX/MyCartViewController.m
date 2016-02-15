//
//  MyCartViewController.m
//  first-lesson-job
//
//  Created by yangbolin on 15/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyCartViewController.h"

@implementation MyCartViewController

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
    self.title = @"购物车";
    self.view.backgroundColor = [UIColor colorWithRed:0.3 green:0.4 blue:0.4 alpha:0.5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end