//
//  SpecialWebViewController.h
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 3..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SpecialWebViewController : UIViewController <UIWebViewDelegate>{
    
    NSURL *url;
    NSURLRequest *urlRequest;
}

@property(nonatomic, strong) IBOutlet UIWebView *spWebView;
@property(nonatomic, strong) IBOutlet UIButton *backwardButton;
@property(nonatomic, strong) IBOutlet UIButton *forwardButton;
@property(nonatomic, strong) IBOutlet UIButton *refreshButton;
@property(nonatomic, strong) IBOutlet UIButton *closeButton;

//- (void)loadSpWebViewWithRequest:(NSURLRequest *)request;

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType;
- (IBAction)backwardButton:(id)sender;
- (IBAction)forwardButton:(id)sender;
- (IBAction)refreshButton:(id)sender;
- (IBAction)closeButton:(id)sender;

@end
