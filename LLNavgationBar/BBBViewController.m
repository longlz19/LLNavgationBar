//
//  BBBViewController.m
//  LLNavgationBar
//
//  Created by longlz on 2017/6/12.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "BBBViewController.h"
#import "LLNavgationBar.h"

@interface BBBViewController ()

@end

@implementation BBBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"BBB";
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    view.backgroundColor = [UIColor redColor];
    self.barView.rightBarButtonItem = [LLBarButtonItem barButtonItemWithCustomView:view handler:^(LLBarButtonItem *barButtonItem) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)root:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
