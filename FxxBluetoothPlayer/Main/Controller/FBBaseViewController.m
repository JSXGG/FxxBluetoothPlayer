//
//  FBBaseViewController.m
//  FxxBluetoothPlayer
//
//  Created by Baird-weng on 2017/4/13.
//  Copyright © 2017年 Baird-weng. All rights reserved.
//

#import "FBBaseViewController.h"

@interface FBBaseViewController ()

@end

@implementation FBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController.navigationBar setBarTintColor:NAVIGARIONBLACKCOLOR];
    NSDictionary * attriBute = @{NSForegroundColorAttributeName:NAVIGARIONBTITLECOLOR,NSFontAttributeName:[UIFont fontWithName:@"Helvetica-Bold" size:17]};
    [self.navigationController.navigationBar setTitleTextAttributes:attriBute];
    self.title = @"主页";
    // Do any additional setup after loading the view.
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
