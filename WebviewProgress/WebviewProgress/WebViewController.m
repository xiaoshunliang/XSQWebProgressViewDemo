//
//  WebViewController.m
//  WebviewProgress
//
//  Created by xiaoshunliang on 2016/11/28.
//  Copyright © 2016年 bodaokeji. All rights reserved.
//

#import "WebViewController.h"
#import "XSQWebProgressView.h"
@interface WebViewController ()<UIWebViewDelegate>
@property (nonatomic, strong) UIWebView * web;
@property (nonatomic, strong) XSQWebProgressView * progressView;
@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.web = [[UIWebView alloc]initWithFrame:self.view.bounds];
    [self.web loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https:www.baidu.com"]]];
    self.web.backgroundColor = [UIColor whiteColor];
    self.web.delegate = self;
    [self.view addSubview:self.web];
    self.progressView = [XSQWebProgressView new];
    self.progressView.frame = CGRectMake(0, 42, [UIScreen mainScreen].bounds.size.width, 2);
    [self.navigationController.navigationBar.layer addSublayer:self.progressView];
}
#pragma mark - UIWebViewDelegate
- (void)webViewDidStartLoad:(UIWebView *)webView {
    [self.progressView startLoad];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.progressView speedLoad];
    self.title = [webView stringByEvaluatingJavaScriptFromString:@"document.title"];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    [self.progressView speedLoad];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.progressView closeTimer];
    [self.progressView removeFromSuperlayer];
    self.progressView = nil;
}

@end
