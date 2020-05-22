//
//  FXTableViewRightDetailCell.h
//
//
//  Created by xunni zou on 2020/3/16.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

@interface FXTableViewRightDetailCell : FXTableViewCellBase

@property (nonatomic, strong) UILabel *descLabel;

- (void)configSubViewWithTitle:(NSString *)title
                   placeHolder:(NSString *)holderString
                        target:(id)target
                      selector:(SEL)sel;

@end
