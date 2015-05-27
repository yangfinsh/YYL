//
//  ChangMobileViewController.m
//  YYL
//
//  Created by admin on 15/5/27.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "ChangMobileViewController.h"

@interface ChangMobileViewController ()

@end

@implementation ChangMobileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title=@"修改手机号";
    UIBarButtonItem *rightbutton=[[UIBarButtonItem alloc]initWithTitle:@"编辑" style:UIBarButtonItemStylePlain target:self action:@selector(changeMobile)];
    self.navigationItem.rightBarButtonItem=rightbutton;
    [self inittextfiled];
    
}
-(void)changeMobile
{
    
}
-(void)inittextfiled
{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0,self.navigationController.navigationBar.frame.size.height+20, [UIScreen mainScreen].bounds.size.width, 40)];
    [label setText:@"123"];
    [label setTextColor:[UIColor redColor]];
    [self.view addSubview:label];
    label.layer.borderColor=[UIColor lightGrayColor].CGColor;
    label.layer.borderWidth=0.5;
    
    UITextField *text1=[[UITextField alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width/2,self.navigationController.navigationBar.frame.size.height+20, [UIScreen mainScreen].bounds.size.width/2, 40)];
    [text1 setTextAlignment:NSTextAlignmentCenter];
    [text1 setTextColor:[UIColor redColor]];
    [label addSubview:text1];
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
