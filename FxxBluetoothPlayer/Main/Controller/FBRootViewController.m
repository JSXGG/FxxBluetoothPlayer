//
//  ViewController.m
//  FxxBluetoothPlayer
//
//  Created by Baird-weng on 2017/4/12.
//  Copyright © 2017年 Baird-weng. All rights reserved.
//

#import "FBRootViewController.h"
#import "MusicListViewController.h"
@interface FBRootViewController ()

@end

@implementation FBRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"MusicList" bundle:[NSBundle mainBundle]];
    UIViewController *ViewController = [storyboard instantiateViewControllerWithIdentifier:@"musicList"];
    [self.view addSubview:ViewController.view];
    [self addChildViewController:ViewController];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
