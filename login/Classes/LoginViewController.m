//
//  LoginViewController.m
//  login
//
//  Created by 孙凯峰 on 2017/4/24.
//  Copyright © 2017年 wubianxiaoxian. All rights reserved.
//

#import "LoginViewController.h"
#import "Userinfo.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blackColor];
    UIButton *loginbutton=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    [loginbutton setTitle:@"Denglu" forState:UIControlStateNormal];
    [loginbutton setTintColor:[UIColor blackColor]];
    [loginbutton addTarget:self action:@selector(Lclick:) forControlEvents:UIControlEventTouchUpInside];
    loginbutton.titleLabel.font=[UIFont systemFontOfSize:20];
    loginbutton.backgroundColor=[UIColor blueColor];
    [self.view addSubview:loginbutton];
    
    // Do any additional setup after loading the view.
}
-(void)Lclick:(UIButton *)sender{
    NSDictionary *dic=@{@"username":@"sunkaifeng"};
//    [Userinfo sharedDetail].Uname=@"sunkaifeng";
    [[Userinfo sharedDetail] setJson:dic];
    
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
