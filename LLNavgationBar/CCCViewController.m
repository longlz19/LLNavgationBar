//
//  CCCViewController.m
//  LLNavgationBar
//
//  Created by longlz on 2017/6/14.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "CCCViewController.h"
#import "LLNavgationBar.h"

@interface CCCViewController ()

@end

@implementation CCCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [LLNavgationBarView addBarTo:self.view];
    self.title = @"CCC";
    self.barView.backgroundColor = [UIColor purpleColor];
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
