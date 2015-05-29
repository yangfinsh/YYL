//
//  AppDelegate.m
//  YYL
//
//  Created by admin on 15/5/25.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "AppDelegate.h"
#import "IndexViewController.h"
#import "MSGViewController.h"
#import "CPYTableViewController.h"
#import "LOVETableViewController.h"
#import "KDGTableViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate
{
    UITabBarController *main;
    CGRect barRect;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    IndexViewController *index=[[IndexViewController alloc]init];
    MSGViewController *message=[[MSGViewController alloc]init];
    CPYTableViewController *company=[[CPYTableViewController alloc]init];
    LOVETableViewController *love=[[LOVETableViewController alloc]init];
    KDGTableViewController *knowdge=[[KDGTableViewController alloc]init];
    main=[[UITabBarController alloc]init];
    main.viewControllers=[NSArray arrayWithObjects:index,message, company,love,knowdge,nil];
    index.title=@"首页";
    message.title=@"消息";
    company.title=@"求同";
    love.title=@"求爱";
    knowdge.title=@"求知";
    [((UITabBarItem*)[main.tabBar.items objectAtIndex:0]) setImage:[UIImage imageNamed:@"img.png"]];
    [((UITabBarItem*)[main.tabBar.items objectAtIndex:1]) setImage:[UIImage imageNamed:@"img.png"]];
    [((UITabBarItem*)[main.tabBar.items objectAtIndex:2]) setImage:[UIImage imageNamed:@"img.png"]];
    [((UITabBarItem*)[main.tabBar.items objectAtIndex:3]) setImage:[UIImage imageNamed:@"img.png"]];
    [((UITabBarItem*)[main.tabBar.items objectAtIndex:4]) setImage:[UIImage imageNamed:@"img.png"]];
    self.navigation=[[UINavigationController alloc]initWithRootViewController:main];
    [self.window setRootViewController:self.navigation];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(tabbarMove) name:@"MOVE" object:nil];
    barRect=main.tabBar.frame;
    return YES;
}
-(void)tabbarMove
{
    NSLog(@"TABBARMOVE");
    static BOOL isshow=false;
    if (!isshow) {
        [main.tabBar setFrame:CGRectMake([UIScreen mainScreen].bounds.size.width-50, barRect.origin.y, barRect.size.width, barRect.size.height)];
        isshow=true;
    }
    else
    {
        [main.tabBar setFrame:barRect];
        isshow=false;
    }
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
