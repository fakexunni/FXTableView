//
//  FXTableViewMultiLineInputCell.m
//
//
//  Created by xunni zou on 2020/3/16.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewMultiLineInputCell.h"
#import <UITextView+Placeholder.h>
#import <SVProgressHUD.h>

@interface FXTableViewMultiLineInputCell () <UITextViewDelegate>

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UITextView *inputTextView;

@end


@implementation FXTableViewMultiLineInputCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _allowEditInputText = YES;
        _maxlength = 200;
    }
    return self;
}

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
    _titleLabel.myTop = 2;
    _titleLabel.font = [UIFont systemFontOfSize:15];
    _titleLabel.clearFloat = YES;     //换行重新布局。
    _titleLabel.widthSize.equalTo(@150);
    _titleLabel.heightSize.equalTo(@21);
    [self.rootLayout addSubview:_titleLabel];
    
    _inputTextView = [[UITextView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 30)];
    if (inputString) {
        _inputTextView.text = inputString;
    }
    else{
        _inputTextView.placeholder = holderString;
    }
    _inputTextView.placeholderColor = [UIColor lightGrayColor];
    _inputTextView.delegate = self;
    _inputTextView.font = [UIFont systemFontOfSize:14];
    _inputTextView.editable = YES;
    _inputTextView.myLeft = 7;
    _inputTextView.myTop = 0;
    _inputTextView.weight = 1.0;
    _inputTextView.myHeight = MyLayoutSize.wrap;
    _inputTextView.clearFloat = YES;     //换行重新布局。
    [self.rootLayout addSubview:_inputTextView];
    self.myHeight = 61;
}

- (void)changeHeigh
{
    CGSize size = [self.rootLayout sizeThatFits:CGSizeZero];
    self.myHeight = size.height;
    NSLog(@"%d",self.myHeight);
    [self layoutIfNeeded];
}

#pragma mark - UITextViewDelegate
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    if (textView == self.inputTextView){
        return self.allowEditInputText;
    }
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView
{
    
    [self changeHeigh];
}



- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@""]) { // 删除字符
        return YES;
    } else {
        if (_maxlength > 0 && textView.text.length == _maxlength) {
            [SVProgressHUD showInfoWithStatus:[NSString stringWithFormat:@"最多输入%ld位",_maxlength]];
            return NO;
        }
    }
    return YES;
}


@end
