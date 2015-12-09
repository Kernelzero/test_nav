//
//  PushSettingController.m
//  TestProjectWithNavigationbar
//
//  Created by KangSH on 2015. 12. 3..
//  Copyright © 2015년 KangSH. All rights reserved.
//

#import "PushSettingController.h"
#import "SwitchTableViewCell.h"

@implementation PushSettingController

@synthesize m_tableMenu;

-(void) viewDidLoad {
    [super viewDidLoad];
    
    m_tableMenu = [[UITableView alloc] init];
    //navigation controller 설정
//    [self.navigationItem setTitle:@"Push 설정화면"];
//    UIBarButtonItem * modalButton = [[UIBarButtonItem alloc] initWithTitle:@"메인화면" style:UIBarButtonItemStylePlain target:self action:@selector(openMain:)];
//    self.navigationItem.leftBarButtonItem = modalButton;
    
    [self.navigationItem setTitle:@"PUSH 설정화면"];
    
    
//    [self.m_tableMenu setDelegate:self.tableView.delegate];
//    [self.m_tableMenu setDataSource:self.tableView.dataSource];
    
//    self.m_tableMenu.delegate = self.tableView.delegate;
//    self.m_tableMenu.dataSource = self.tableView.dataSource;
    
//    self.m_tableMenu = self.tableView;
    [self.m_tableMenu setDelegate: self.tableView.delegate];
    [self.m_tableMenu setDataSource: self.tableView.dataSource];
    
}



#pragma mark - <UITableViewDataSource>


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SwitchTableViewCell *cell = (SwitchTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"switchcell"];
    
//    SwitchTableViewCell *cell = 
    
    //navigation controller로 타고오면 cell이 nil이 되어버림..그리고 cell이 안그려짐..
    if (cell == nil) {
        NSLog(@"cell is Nil");
        cell = [[SwitchTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"switchcell"];
        
        UISwitch *sw_button = [[UISwitch alloc] init];
        cell.m_switch =sw_button;
        UILabel *lb_text = [[UILabel alloc] init];
        cell.m_lbTitle = lb_text;
    }
    else {
        NSLog(@"cell is Not Nil");
    }
    
    NSLog(@"indexPath = %ld", indexPath.section);
    
    NSString *cellTitle = @"";
    if (indexPath.section == 0) {
        cellTitle = @"푸시 받을 때 소리를 켭니다.";
    }else{
        cellTitle = @"푸시 받을 때 진동을 울립니다.";
    }
    
    cell.m_lbTitle.text = cellTitle;
    cell.m_switch.tag = indexPath.section;  //태그를 변경하여 보낸다 0은 소리설정, 1은 진동설정이다.
    
    return cell;
}

//섹션수
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView { 
    return 2;
}
//섹션당 row 수
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
//섹션 타이틀 설정
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    NSString *strSection = @"소리";
    
    if (section == 1) {
        strSection = @"진동";
    }
    
    return [NSString stringWithFormat:@"%@ 설정", strSection];
}

#pragma mark -
#pragma mark <switch action>


- (void) openMain:(id)sender{
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    if (cell == nil) {
    
        NSLog(@"niled cell");
    }else{
        NSLog(@"not nil");
    }
}



@end





















