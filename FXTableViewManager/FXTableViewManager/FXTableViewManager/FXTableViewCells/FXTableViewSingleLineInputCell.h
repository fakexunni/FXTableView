//
//  FXTableViewSingleLineInputCell.h
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

@interface FXTableViewSingleLineInputCell : FXTableViewCellBase

//是否为必填/选填
@property (nonatomic, assign) BOOL isUrgency;
//允许编辑
@property (nonatomic, assign) BOOL allowEditInputText;  //默认为YES、

@property (nonatomic, assign) UIKeyboardType keyboardType;

@property (nonatomic, strong, readonly) UITextField *inputTextField;
/**
 最大输入字符,default is 15
 */
@property (nonatomic,assign) NSInteger maxlength;


- (void)configWithTitle:(NSString *)title
            inputString:(NSString *)inputString
            placeHolder:(NSString *)holderString;

@end
