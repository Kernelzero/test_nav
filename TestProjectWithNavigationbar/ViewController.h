//
//  ViewController.h
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 3..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Controllers/PushSettingController.h"
#import "Controllers/SpecialWebViewController.h"
#import "Controllers/PushViewController.h"

@interface ViewController : UIViewController <UIWebViewDelegate , UITabBarControllerDelegate>

@property (nonatomic, strong) IBOutlet UIViewController *pushAlert;
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet UIWebView *m_webView;
//@property (strong, nonatomic) UITabBarController *m_tabBar;

-(IBAction)pushSetting:(id)sender;
-(IBAction)openSpWebView:(id)sender;



@end

