//
//  SeconfViewController.m
//  choutishitu
//
//  Created by zhanghangzhen on 16/3/31.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "SeconfViewController.h"
#import "HYCircleLoadingView.h"
@interface SeconfViewController ()
{
    HYCircleLoadingView *View;
}
@end

@implementation SeconfViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
     View = [[HYCircleLoadingView alloc]initWithFrame:CGRectMake(0,100, 100, 100)];
    
    [self.view addSubview:View];
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"测试1" style:UIBarButtonItemStylePlain target:self action:@selector(regis)];
    self.navigationItem.rightBarButtonItem = rightBtn;
    
}
-(void)regis{
    if (View.isAnimating) {
        [View stopAnimation];
        return;
    }
    [View startAnimation];
    
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
