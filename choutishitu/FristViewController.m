//
//  FristViewController.m
//  choutishitu
//
//  Created by zhanghangzhen on 16/3/31.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "FristViewController.h"
#import "ZHZOViewController.h"
@interface FristViewController ()

@end

@implementation FristViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.navigationController);
    
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithTitle:@"测试1" style:UIBarButtonItemStylePlain target:self action:@selector(regis)];
    self.navigationItem.rightBarButtonItem = rightBtn;


}
-(void)regis{
    ZHZOViewController *vc = [[ZHZOViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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
