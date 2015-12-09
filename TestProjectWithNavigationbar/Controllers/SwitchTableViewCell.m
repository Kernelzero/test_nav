//
//  SwitchTableViewCell.m
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 4..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import "SwitchTableViewCell.h"

@implementation SwitchTableViewCell

- (id) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        NSLog(@"reused....")    ;
    }
    
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)actionSwitch:(UISwitch *)sender
{
    NSLog(@"switch button tag: %ld", sender.tag);
    //입력한 tag정보로 분기함, 0은 사운드 1은 진동
    if (sender.tag == 0) {
        if ([sender isOn]) {
            NSLog(@"sound on!");
        }else{
            NSLog(@"sound off");
        }
    }
    else{
        if ([sender isOn]) {
            NSLog(@"vibe on!");
        }else{
            NSLog(@"vibe off");
        }
        
    }

}

@end
