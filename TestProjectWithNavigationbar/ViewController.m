//
//  ViewController.m
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 3..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //navigation controller 설정
    self.title = @"메인화면";
    
//    self.navigationController.navigationBarHidden = NO;
//    self.navigationController.navigationBar.barStyle = UIBarStyleBlack; //스타일 적용
//    self.navigationController.navigationBar.translucent = YES; // 반투명 효과 주기
    
    
 
    
    UIBarButtonItem * settingButton = [[UIBarButtonItem alloc] initWithTitle:@"Push 설정" style:UIBarButtonItemStylePlain target:self action:@selector(pushSetting:)];
    UIBarButtonItem * modalButton = [[UIBarButtonItem alloc] initWithTitle:@"특별 웹뷰" style:UIBarButtonItemStylePlain target:self action:@selector(openSpWebView:)];
    
    self.navigationItem.rightBarButtonItem = settingButton;
    self.navigationItem.leftBarButtonItem = modalButton;
    
    
    
    UILabel *lbs = [[UILabel alloc] init];
    lbs.text = @"test";
    
//    self.navigationItem.title = @"navi title"; // 네비게이션 타이틀 이름은 이걸로 설정.
    
    
    //웹뷰
    
    NSURL *url = [NSURL URLWithString:@"http://www.naver.com"];
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:url];
    [self.m_webView loadRequest:requestURL];
    
    
    
    
    //탭바 탭 추가
//    UIViewController *view1 = [[UIViewController alloc] init];
//    UIViewController *view2 = [[UIViewController alloc] init];
//    UIViewController *view3 = [[UIViewController alloc] init];
//    
//    NSMutableArray *tabViewControllers = [[NSMutableArray alloc] init];
//    
//    
// 
//    self.m_tabBar = [[UITabBarController alloc] initWithNibName:@"mainTabBar" bundle:nil];
//    
//    self.m_tabBar = self.tabBarController;
//    
//    //기존 탭바 탭 추가
//    
//    NSMutableArray *oldViews = [NSMutableArray arrayWithArray:[self.tabBarController viewControllers]];
//    for (int a = 0; a < [oldViews count]; a++) {
//        
//        [tabViewControllers addObject:oldViews[a]];
//    }
//    
//    
//    
//    view1.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"Goole"
//                                  image:nil
//                                    tag:20];
//    view2.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"Daum"
//                                  image:nil
//                                    tag:30];
//    view3.tabBarItem =
//    [[UITabBarItem alloc] initWithTitle:@"nate"
//                                  image:nil
//                                    tag:40];
//    
//    //신규 탭바 탭 추가
//    [tabViewControllers addObject:view1];
//    [tabViewControllers addObject:view2];
//    [tabViewControllers addObject:view3];
//
//    [self.m_tabBar setViewControllers:tabViewControllers animated:YES];
//    
//    
//    
//    [self.m_tabBar setDelegate:self];
//    
//    NSLog(@"%@",self.m_tabBar);
//    
    
    
    
    
    
    
    
    //푸시 화면 보여주기 테스트
//    self.pushAlert = [[NSBundle mainBundle] loadNibNamed:@"PushViewController" owner:self options:nil].firstObject;
//    self.pushAlert.view.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 64);
//    self.window.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64);
//    [self addChildViewController:self.pushAlert];
//    [self.view addSubview:self.pushAlert];
//    [self.view addSubview:self.pushAlert];
//    [self.window setRootViewController:self.navigationController];
//    [self.window addSubview:self.pushAlert];
//    [self.window makeKeyAndVisible];

    
//    [[NSBundle mainBundle] loadNibNamed:@"PushViewController" owner:self options:nil];
//    [self.navigationController addChildViewController:self.pushAlert];
    
    
    //TODO: 뷰 컨트롤러로 변경...
//    PushViewController *vcPush = [[PushViewController alloc] initWithNibName:@"PushViewController" bundle:nil];
//    [vcPush.view setFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
//    [self.navigationController.view addSubview:vcPush.view];
    
    
    
    
//    NSArray *subviewArray = [[NSBundle mainBundle] loadNibNamed:@"PushViewController" owner:self options:nil];
//    UIView *mainView = [subviewArray objectAtIndex:0];
//    
//    [self.pushAlert.view addSubview:mainView];
    
    
     
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//푸시 세팅 액션
-(IBAction) pushSetting:(id)sender
{
    PushSettingController *pushSetting = [[PushSettingController alloc] init];
    
//    [pushSetting setModalPresentationStyle:UIModalPresentationNone];
    [self.navigationController pushViewController:pushSetting animated:YES];
    
}

//특별 웹뷰 액션
-(IBAction)openSpWebView:(id)sender{
//    SpecialWebViewController *spCon = [[SpecialWebViewController alloc] init];
//    [spCon setModalPresentationStyle:UIModalPresentationPopover];
//     [self.navigationController presentViewController:spCon animated:YES completion:nil];
    
    SpecialWebViewController *spCon = [self.storyboard instantiateViewControllerWithIdentifier:@"SpecialWebViewController"];
    [self presentModalViewController:spCon animated:YES];
//        [self.navigationController pushViewController:spCon animated:YES];

} 
@end


























