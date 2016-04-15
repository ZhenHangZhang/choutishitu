//
//  ZHZOViewController.m
//  choutishitu
//
//  Created by zhanghangzhen on 16/3/31.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "ZHZOViewController.h"
#import "ZHZTViewController.h"
#import "AppDelegate.h"
@interface ZHZOViewController ()

@end

@implementation ZHZOViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"测试2" style:UIBarButtonItemStylePlain target:self action:@selector(regis)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    
    
    
    
  }
-(void)regis{
    ZHZTViewController *vc = [[ZHZTViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

-(void)viewWillAppear:(BOOL)animated{
     [super viewWillAppear:animated];
    AppDelegate *de = [[UIApplication sharedApplication] delegate];
    de.mainNavigationController.navigationBarHidden = YES;
//    [de.LeftSlideVC setPanEnabled:NO];

    
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
