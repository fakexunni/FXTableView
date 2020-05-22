//
//  FXTableViewSingleLineInputCell.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewSingleLineInputCell.h"
#import <SVProgressHUD.h>

@interface FXTableViewSingleLineInputCell ()<UITextFieldDelegate>

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UITextField *inputTextField;

@end


@implementation FXTableViewSingleLineInputCell

- (void)configWithTitle:(NSString *)title
            inputString:(NSString *)inputString
            placeHolder:(NSString *)holderString
{
    [self configSubViewWithTitle:title inputString:inputString placeHolder:holderString];
}

- (void)configSubViewWithTitle:(NSString *)title
                   inputString:(NSString *)inputString
                   placeHolder:(NSString *)holderString
{
    self.rootLayout = [[MyFloatLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.rootLayout.myHorzMargin = 0;  //宽度和滚动条视图保持一致。
    self.rootLayout.myHeight = MyLayoutSize.fill;
    self.rootLayout.subviewVSpace = 0;
    [self addSubview:self.rootLayout];
    
    _titleLabel = [UILabel new];
    _titleLabel.text = title;
    _titleLabel.myLeft = 12;
    _titleLabel.myTop = 7;
    _titleLabel.font = [UIFont systemFontOfSize:15];
    _titleLabel.clearFloat = YES;     //换行重新布局。
    _titleLabel.widthSize.equalTo(@(MyLayoutSize.wrap));
    _titleLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_titleLabel];
    
    _inputTextField = [[UITextField alloc] init];
    _inputTextField.delegate = self;
    _inputTextField.placeholder = holderString;
    _inputTextField.text = inputString;
    _inputTextField.font = [UIFont systemFontOfSize:14];
    _inputTextField.heightSize.equalTo(@30);
    _inputTextField.textAlignment = NSTextAlignmentRight;
    _inputTextField.keyboardType = _keyboardType;
    _inputTextField.myRight = 10;
    _inputTextField.myTop = 7;
    _inputTextField.weight = 1.0;
    _inputTextField.reverseFloat = YES;
    [self.rootLayout addSubview:_inputTextField];
    self.myHeight = 44;
}


#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if (textField == _inputTextField){
        return self.allowEditInputText;
    }
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    if ([string isEqualToString:@""]) { // 删除字符
        return YES;
    } else {
        
        if (_maxlength > 0 && textField.text.length == _maxlength) {
            [SVProgressHUD showInfoWithStatus:[NSString stringWithFormat:@"最多输入%ld位",_maxlength]];
            return NO;
        }
    }
    return YES;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _allowEditInputText = YES;
        _maxlength = 15;
    }
    return self;
}


@end
