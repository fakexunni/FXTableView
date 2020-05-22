//
//  YQCRMMultiLineInputView.h
//
//
//  Created by xunni zou on 2020/3/16.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

@interface FXTableViewMultiLineInputCell : FXTableViewCellBase

//允许编辑
@property (nonatomic, assign) BOOL allowEditInputText;  //默认为YES、

@property (nonatomic, strong, readonly) UITextView *inputTextView;

/**
 最大输入字符,default is 200
 */
@property (nonatomic,assign) NSInteger maxlength;

- (void)configWithTitle:(NSString *)title
            inputString:(NSString *)inputString
            placeHolder:(NSString *)holderString;


@end
