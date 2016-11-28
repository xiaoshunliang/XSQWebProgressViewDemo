//
//  ViewController.m
//  WebviewProgress
//
//  Created by xiaoshunliang on 2016/11/28.
//  Copyright © 2016年 bodaokeji. All rights reserved.
//

#import "ViewController.h"
#import "WebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushToWeb:(UIButton *)sender {
    
    WebViewController *vc = [[WebViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
