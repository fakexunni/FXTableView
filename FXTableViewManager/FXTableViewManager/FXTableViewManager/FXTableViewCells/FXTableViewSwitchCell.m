//
//  FXTableViewSwitchCell.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewSwitchCell.h"


@interface FXTableViewSwitchCell ()

@property (strong, nonatomic) UISwitch *switchButton;

@property (nonatomic, strong) UILabel *leftTitleLabel;

@property (nonatomic, strong) UILabel *rightLabel;

@property (nonatomic, strong) UILabel *subTitleLabel;

@end

@implementation FXTableViewSwitchCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)configWithTitle:(NSString *)title
              rightDesc:(NSString *)rightDesc
            switchState:(BOOL)state
               subTitle:(NSString *)subTitle

{
    self.rootLayout = [[MyFloatLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.rootLayout.myHorzMargin = 0;  //宽度和滚动条视图保持一致。
    self.rootLayout.myHeight = MyLayoutSize.fill;
    self.rootLayout.subviewVSpace = 0;
    [self addSubview:self.rootLayout];
    
    _leftTitleLabel = [UILabel new];
    _leftTitleLabel.text = title;
    _leftTitleLabel.myLeft = 12;
    _leftTitleLabel.myTop = 7;
    _leftTitleLabel.font = [UIFont systemFontOfSize:15];
    _leftTitleLabel.clearFloat = YES;     //换行重新布局。
    _leftTitleLabel.widthSize.equalTo(@100);
    _leftTitleLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_leftTitleLabel];
    
    _switchButton = [[UISwitch alloc] init];
    _switchButton.myTop = 7;
    _switchButton.myRight = 10;
    _switchButton.reverseFloat = YES;
    [_switchButton setOn:state];
    [_switchButton addTarget:self action:@selector(clickSwitchButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.rootLayout addSubview:_switchButton];

    _rightLabel = [UILabel new];
    _rightLabel.text = rightDesc;
    _rightLabel.textColor = [UIColor darkGrayColor];
    _rightLabel.textAlignment = NSTextAlignmentRight;
    _rightLabel.myRight = 10;
    _rightLabel.myTop = 7;
    _rightLabel.reverseFloat = YES;
    _rightLabel.font = [UIFont systemFontOfSize:14];
    _rightLabel.weight = 0.8;
    _rightLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_rightLabel];
    self.myHeight = 44;
    if (subTitle) {
        _subTitleLabel = [UILabel new];
        _subTitleLabel.text = subTitle;
        _subTitleLabel.textColor = [UIColor lightGrayColor];
        _subTitleLabel.textAlignment = NSTextAlignmentLeft;
        _subTitleLabel.myLeft = 12;
        _subTitleLabel.myTop = 0;
        _subTitleLabel.clearFloat = YES;
        _subTitleLabel.font = [UIFont systemFontOfSize:12];
        _subTitleLabel.weight = 1.0;
        _subTitleLabel.heightSize.equalTo(@21);
        [self.rootLayout addSubview:_subTitleLabel];
        self.myHeight = 61;
    }
}


- (IBAction)clickSwitchButton:(UISwitch *)sender {
    if (_changeSwitch){
        _changeSwitch(sender.on);
    }
}


@end
