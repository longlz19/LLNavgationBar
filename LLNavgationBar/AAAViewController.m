//
//  AAAViewController.m
//  LLNavgationBar
//
//  Created by longlz on 2017/5/31.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "AAAViewController.h"
#import "LLNavgationBar.h"
#import "BBBViewController.h"
#import "CCCViewController.h"

@interface AAAViewController ()

@property (assign ,nonatomic) BOOL isTop;

@end

@implementation AAAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.extendedLayoutIncludesOpaqueBars = YES;
    self.isTop = YES;
    self.barView.title = @"AAA";
}

- (void)viewDidLayoutSubviews{

}
- (IBAction)hidden:(id)sender {
    CGFloat topInset = self.barView.topInset;
    if (topInset > 0) {
        self.isTop = YES;
    }else if (topInset < -64){
        self.isTop = NO;
    }
    
    if (self.isTop) {
        topInset -= 10;
    }else{
        topInset += 10;
    }
    
    [self.barView setTopInset:topInset animated:YES];
}
- (IBAction)b:(id)sender {
    BBBViewController *bbVC = [[BBBViewController alloc]init];
    [self.navigationController pushViewController:bbVC animated:YES];
}
- (IBAction)c:(id)sender {
    CCCViewController *ccVC = [[CCCViewController alloc]init];
    [self.navigationController pushViewController:ccVC animated:YES];
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
