//
//  FXTableView.h
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FXTableViewSingleLineInputCell.h"
#import "FXTableViewMultiLineInputCell.h"
#import "FXTableViewRightDetailCell.h"
#import "FXTableViewSwitchCell.h"
#import "FXTableViewImageTitleCell.h"
#import "FXTableViewSectionView.h"


NS_ASSUME_NONNULL_BEGIN

@interface FXTableView : UIScrollView

- (void)addFXSubview:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
