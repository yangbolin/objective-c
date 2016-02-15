//
//  AppDelegate.m
//  first-lesson-job
//
//  Created by yangbolin on 9/2/16.
//  Copyright © 2016 yangbolin. All rights reserved.
//

#import "AppDelegate.h"
#import "IndexViewController.h"
#import "SearchViewController.h"
#import "WeiTaoViewController.h"
#import "MyCartViewController.h"
#import "MyTaobaoViewController.h"

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    IndexViewController* index = [[IndexViewController alloc] init];
    WeiTaoViewController* weiTao = [[WeiTaoViewController alloc] init];
    SearchViewController* search = [[SearchViewController alloc] init];
    MyCartViewController* myCart = [[MyCartViewController alloc] init];
    MyTaobaoViewController* myTaobao = [[MyTaobaoViewController alloc] init];
    
    index.tabBarItem = [[UITabBarItem alloc] init];
    index.tabBarItem.title=@"首页";
    index.tabBarItem.image=[UIImage imageNamed:@"tabbar_home_unselected.png"];
    
    
    weiTao.tabBarItem = [[UITabBarItem alloc] init];
    weiTao.tabBarItem.title=@"微淘";
    weiTao.tabBarItem.image=[UIImage imageNamed:@"tabbar_weitao_unselected.png"];

    search.tabBarItem = [[UITabBarItem alloc] init];
    search.tabBarItem.title=@"搜索";
    search.tabBarItem.image=[UIImage imageNamed:@"tabbar_search_unselected.png"];
    
    myCart.tabBarItem = [[UITabBarItem alloc] init];
    myCart.tabBarItem.title=@"购物车";
    myCart.tabBarItem.image=[UIImage imageNamed:@"tabbar_cart_unselected.png"];
    
    myTaobao.tabBarItem = [[UITabBarItem alloc] init];
    myTaobao.tabBarItem.title=@"我的淘宝";
    myTaobao.tabBarItem.image=[UIImage imageNamed:@"tabbar_mytaobao_unselected.png"];
    
    
    UINavigationController *indexNav = [[UINavigationController alloc] initWithRootViewController:index];
    UINavigationController *weiTaoNav = [[UINavigationController alloc] initWithRootViewController:weiTao];
    UINavigationController *searchNav = [[UINavigationController alloc] initWithRootViewController:search];
    UINavigationController *myCartNav = [[UINavigationController alloc] initWithRootViewController:myCart];
    UINavigationController *myTaobaoNav = [[UINavigationController alloc] initWithRootViewController:myTaobao];
    
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];

    tabbarVC.viewControllers = [NSArray arrayWithObjects:indexNav, weiTaoNav, searchNav, myCartNav, myTaobaoNav, nil];

    self.window.rootViewController = tabbarVC;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
