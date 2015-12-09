//
//  SwitchTableViewCell.h
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 4..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwitchTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *   m_lbTitle;
@property (strong, nonatomic) IBOutlet UISwitch *  m_switch;

- (IBAction)actionSwitch:(UISwitch *)sender;

@end
