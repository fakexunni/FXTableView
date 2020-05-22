//
//  FXTableViewSwitchCell.h
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

typedef void (^FXTableViewSwitchBlock)(BOOL state);

@interface FXTableViewSwitchCell : FXTableViewCellBase

@property (nonatomic, copy) FXTableViewSwitchBlock changeSwitch;

- (void)configWithTitle:(NSString *)title
              rightDesc:(NSString *)rightDesc
            switchState:(BOOL)state
               subTitle:(NSString *)subTitle;

@end
