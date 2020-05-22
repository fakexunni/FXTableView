//
//  FXTableViewImageTitleCell.h
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/28.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface FXTableViewImageTitleCell : FXTableViewCellBase

//图片在左边
- (void)configSubViewWithLeftTitle:(NSString *)leftTitleString
                     leftImage:(UIImage *)leftImage
                     rightTitle:(NSString *)rightTitleString
                        target:(id)target
                      selector:(SEL)sel;

//图片在右边
- (void)configSubViewWithLeftTitle:(NSString *)leftTitleString
                         rightImage:(UIImage *)rightImage
                            target:(id)target
                          selector:(SEL)sel;


@end

NS_ASSUME_NONNULL_END
