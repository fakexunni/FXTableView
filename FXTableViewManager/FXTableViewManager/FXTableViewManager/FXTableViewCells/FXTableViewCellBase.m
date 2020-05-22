//
//  FXTableViewCellBase.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

@implementation FXTableViewCellBase

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configLayoutBasicView];
    }
    return self;
}

- (void)configLayoutBasicView
{
    self.weight = 1.0;
    self.clearFloat = YES;
}

@end
