//
//  FXTableViewCellBase.h
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MyFloatLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface FXTableViewCellBase : UIView

@property (nonatomic, strong) MyFloatLayout *rootLayout;

@property (nonatomic, assign) NSInteger identiferTag;

- (void)configLayoutBasicView;

@end

NS_ASSUME_NONNULL_END
