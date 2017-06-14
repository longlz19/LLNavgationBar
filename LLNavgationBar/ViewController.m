//
//  ViewController.m
//  LLNavgationBar
//
//  Created by longlz on 2017/5/12.
//  Copyright © 2017年 longlz. All rights reserved.
//

#import "ViewController.h"
#import "LLNavgationBarView.h"
#import "BBBViewController.h"
#import "CCCViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraint;

@property (assign ,nonatomic) BOOL isScrolling;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [LLNavgationBarView addBarTo:self.view];
    self.barView.title = @"Home";
    self.barView.backgroundColor = [UIColor whiteColor];
    self.isScrolling = YES;
    self.barView.rightBarButtonItem = [LLBarButtonItem barButtonItemWithTitle:@"滚动" handler:^(LLBarButtonItem *barButtonItem) {
        self.isScrolling = !self.isScrolling;
        barButtonItem.titleLabel.text = (self.isScrolling?@"滚动":@"停止");
        if (!self.isScrolling) {
            [self.barView setTopInset:0 animated:YES];
        }
    }];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellId"];
    }
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"xib";
            break;
        case 1:
            cell.textLabel.text = @"storyboard";
            break;
        case 2:
            cell.textLabel.text = @"代码";
            break;
        default:
            cell.textLabel.text = @"AASDSADAS";
            break;
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    switch (indexPath.row) {
        case 0:
            [self btnClick:nil];
            break;
            //aaaaaaa
        case 1:
        {
            [self performSegueWithIdentifier:@"aaaaaaa" sender:self];
        }
            break;
        case 2:
        {
            CCCViewController *ccVC = [[CCCViewController alloc]init];
            [self.navigationController pushViewController:ccVC animated:YES];
        }
            break;
        default:
            break;
    }
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (!self.isScrolling) {
        return;
    }
    CGFloat offY = scrollView.contentOffset.y;
    if (offY > 64) {
        offY = 64;
    }
    [self.barView setTopInset:-offY animated:YES];
    self.topConstraint.constant = 44 - offY;
    
    [UIView animateWithDuration:0.3 animations:^{
        [self.view setNeedsLayout];
    } completion:^(BOOL finished) {
        
    }];
}

- (IBAction)btnClick:(id)sender {
    BBBViewController *bbVC = [[BBBViewController alloc]init];
    [self.navigationController pushViewController:bbVC animated:YES];
}
- (IBAction)alertBackView:(id)sender {
    UILabel *backLabel = [[UILabel alloc]initWithFrame:self.view.bounds];
    backLabel.textAlignment = NSTextAlignmentCenter;
    backLabel.font = [UIFont systemFontOfSize:40];
    backLabel.text = @"5s后自动消失";
    backLabel.textColor = [UIColor whiteColor];
    backLabel.userInteractionEnabled = YES;
    [self.view addSubview:backLabel];
    backLabel.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.6];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [backLabel removeFromSuperview];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
