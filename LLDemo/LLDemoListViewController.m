//
//  LLDemoListViewController.m
//  LLDemo
//
//  Created by galileio on 2016/12/21.
//  Copyright © 2016年 ctw. All rights reserved.
//

#import "LLDemoListViewController.h"
#import "LLTestCopyViewController.h"
@interface LLDemoListViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LLDemoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * identify = @"demoCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
    }
    cell.textLabel.text = @"用@property声明的NSString经常使用copy关键字，为什么？";
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LLTestCopyViewController * vc = [LLTestCopyViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
