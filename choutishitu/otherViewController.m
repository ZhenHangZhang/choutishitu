//
//  otherViewController.m
//  LGDeckViewController
//
//  Created by huangzhenyu on 15/6/1.
//  Copyright (c) 2015年 Jamie-Ling. All rights reserved.
//

#import "otherViewController.h"
#import "AppDelegate.h"
@interface otherViewController ()

@end

@implementation otherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    AppDelegate *de = [[UIApplication sharedApplication] delegate];
    de.mainNavigationController.navigationBarHidden = NO;
    [de.LeftSlideVC setPanEnabled:NO];
}

-(void)viewWillDisappear:(BOOL)animated{
    
    [super viewWillDisappear:animated];
    
    AppDelegate *de = [[UIApplication sharedApplication] delegate];
    de.mainNavigationController.navigationBarHidden = YES;
    [de.LeftSlideVC setPanEnabled:YES];
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
