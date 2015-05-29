//
//  CPYTableViewController.m
//  YYL
//
//  Created by admin on 15/5/28.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "CPYTableViewController.h"

@interface CPYTableViewController ()

@end

@implementation CPYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *bar=[[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, 60)];
    [bar setBarTintColor:[UIColor lightGrayColor]];
    UIBarButtonItem *rightbutton=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"img.png"] style:UIBarButtonItemStylePlain target:self action:@selector(addFriends)];
    UINavigationItem *item=[[UINavigationItem alloc]initWithTitle:@"消息"];
    [item setRightBarButtonItem:rightbutton];
    [bar pushNavigationItem:item animated:false];
    [self.view addSubview:bar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
