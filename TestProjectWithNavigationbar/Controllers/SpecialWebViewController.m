//
//  SpecialWebViewController.m
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 3..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import "SpecialWebViewController.h"

@implementation SpecialWebViewController



- (void)viewDidUnload{
    [super viewDidUnload];
//    [self.spWebView loadRequest:urlRequest];
    
    
//    self.spWebView.delegate = self;
//    
//    NSURL *url = [NSURL URLWithString:@"http://google.com"];
//    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
//    [self.spWebView loadRequest:requestURL];
    
    }

-(void)viewDidLoad{
    
//    NSURL *url = [NSURL URLWithString:@"http://192.168.1.39"];
    NSURL *url = [NSURL URLWithString:@"http://www.naver.com"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [self.spWebView loadRequest:requestURL];
    
    //navigationController setting
    UINavigationBar *navbar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width, 44)];
    //do something like background color, title, etc you self
    
    UINavigationItem * item = [[UINavigationItem alloc] init];
 
   
    [item setTitle:@"특별웹뷰"];

    [navbar pushNavigationItem:item animated:NO];
    [self.view addSubview:navbar];
     navbar.tintColor = [UIColor whiteColor];
    
    [self.spWebView stringByEvaluatingJavaScriptFromString:@"window.open = function (open) { return function  (url, name, features) { window.location.href = url; return window; }; } (window.open);"];
 
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    
    
    
}

- (void)loadSpWebViewWithRequest:(NSURLRequest *)request{
    urlRequest = request;
}

-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    return YES;
    
}

- (IBAction)backwardButton:(id)sender {
    NSLog(@"backward Button pressed");
    if (self.spWebView.canGoBack == YES) {
        [self.spWebView goBack];
    }
    else
    {
       [self dismissViewControllerAnimated:YES completion:nil];
    }

}

- (IBAction)forwardButton:(id)sender {
    NSLog(@"forward Button pressed");
    [self.spWebView goForward];
}

- (IBAction)refreshButton:(id)sender {
    NSLog(@"refresh Button pressed");
    [self.spWebView reload];
}

- (IBAction)closeButton:(id)sender {
    NSLog(@"close Button pressed");
    [self dismissViewControllerAnimated:YES completion:nil];
}



-(void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"start loading");
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"loading finished");
}
-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    NSLog(@"loading error");
}

@end
