//
//  PushSettingController.h
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 3..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import <UIKit/UIKit.h> 


@interface PushSettingController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *m_tableMenu;

- (void) openMain:(id)sender;
@end
