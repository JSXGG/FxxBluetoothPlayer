//
//  FBLeftViewController.m
//  FxxBluetoothPlayer
//
//  Created by Baird-weng on 2017/4/13.
//  Copyright © 2017年 Baird-weng. All rights reserved.
//

#import "FBLeftViewController.h"
#import "FBdefine.h"
#import "FBBaseViewController.h"
@interface FBLeftViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(strong,nonatomic)UITableView *tableview;

@end

@implementation FBLeftViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:[self tableview]];
    self.view.backgroundColor=[UIColor clearColor];
    // Do any additional setup after loading the view.
}
-(UITableView*)tableview
{
    if (!_tableview) {
        _tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, (self.view.frame.size.height - 54 * 5) / 2.0f, self.view.frame.size.width, 54 * 5) style:UITableViewStylePlain];
        _tableview.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleWidth;
        _tableview.delegate = self;
        _tableview.dataSource = self;
        _tableview.opaque = NO;
        _tableview.backgroundColor = [UIColor clearColor];
        _tableview.backgroundView = nil;
        _tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableview.bounces = NO;

    }
    return _tableview;
}
#pragma  mark 列表代理方法

/**
 列表代理方法

 @param tableView  tableView
 @param section 组
 @return Cell 的数量
 */
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
    
}

/**
 列表数据源

 @param tableView tableView
 @param indexPath 索引
 @return 设置数据源
 */
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *Cell =[tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (Cell==nil) {
        Cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:@"UITableViewCell"];
    }
    NSArray *images = @[@"Localmusic", @"audio", @"alarmclock", @"bluetooth", @"OTA"];
    NSArray *titles = @[@"本地播放", @"音频输入", @"闹钟", @"蓝牙连接", @"OTA升级"];
    Cell.textLabel.text = titles[indexPath.row];
    Cell.imageView.image = [UIImage imageNamed:images[indexPath.row]];
    Cell.backgroundColor = [UIColor clearColor];
    Cell.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:21];
    Cell.textLabel.textColor = [UIColor whiteColor];
    return Cell;
    
}
/**
 列表点击事件

 @param tableView tableView
 @param indexPath 索引
 */
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
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
