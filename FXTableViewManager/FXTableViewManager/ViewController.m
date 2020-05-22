//
//  ViewController.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "ViewController.h"
#import "FXTableView.h"
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) FXTableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [FXTableView new];
    [self.view addSubview:_tableView];
    [_tableView mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(UIEdgeInsetsZero);
    }];
    
    
    FXTableViewSingleLineInputCell *cell1 = [[FXTableViewSingleLineInputCell alloc] init];
    cell1.isUrgency = YES;
    [cell1 configWithTitle:@"客户名称" inputString:nil placeHolder:@"必填"];
    [_tableView addFXSubview:cell1];
    
    FXTableViewSectionView *section1 = [[FXTableViewSectionView alloc] init];
    [section1 configSubViewWithTitle:@"这里是头部section" location:FXTableViewSectionLocationHeader];
    [_tableView addFXSubview:section1];
    
    FXTableViewMultiLineInputCell *cell2 = [[FXTableViewMultiLineInputCell alloc] init];
    [cell2 configWithTitle:@"客户备注" inputString:nil placeHolder:@"输入客户备注"];
    [_tableView addFXSubview:cell2];
    
    FXTableViewRightDetailCell *cell3 = [[FXTableViewRightDetailCell alloc] init];
    [cell3 configSubViewWithTitle:@"请选择" placeHolder:@"万一" target:self selector:@selector(chooseSomething)];
    [_tableView addFXSubview:cell3];
    
    FXTableViewSwitchCell *cell4 = [[FXTableViewSwitchCell alloc] init];
    [cell4 configWithTitle:@"开关" rightDesc:@"开" switchState:YES subTitle:@"这里是副标题,这里是副标题,这里是副标题"];
    [_tableView addFXSubview:cell4];
    


    FXTableViewSwitchCell *cell5 = [[FXTableViewSwitchCell alloc] init];
    [cell5 configWithTitle:@"开关" rightDesc:@"开" switchState:YES subTitle:nil];
    [_tableView addFXSubview:cell5];
    
    FXTableViewSectionView *section2 = [[FXTableViewSectionView alloc] init];
    [section2 configSubViewWithTitle:@"这里是尾部section,这里是尾部section,这里是尾部section这里是尾部section这里是尾部section这里是尾部section这里是尾部section" location:FXTableViewSectionLocationFooter];
    [_tableView addFXSubview:section2];
    
    
    FXTableViewImageTitleCell *cell6 = [[FXTableViewImageTitleCell alloc] init];
    [cell6 configSubViewWithLeftTitle:@"设置" leftImage:[UIImage imageNamed:@"headImage"] rightTitle:@"5个" target:self selector:@selector(chooseSomething)];
    [_tableView addFXSubview:cell6];
    
    FXTableViewSectionView *section3 = [[FXTableViewSectionView alloc] init];
    [section3 configSubViewWithTitle:@"这里是尾部section" location:FXTableViewSectionLocationFooter];
    [_tableView addFXSubview:section3];

    FXTableViewImageTitleCell *cell7 = [[FXTableViewImageTitleCell alloc] init];
    [cell7 configSubViewWithLeftTitle:@"设置" rightImage:[UIImage imageNamed:@"headImage"] target:self selector:@selector(chooseSomething)];
    [_tableView addFXSubview:cell7];

}

- (void)chooseSomething
{
    NSLog(@"chooseSomething");
}


@end
