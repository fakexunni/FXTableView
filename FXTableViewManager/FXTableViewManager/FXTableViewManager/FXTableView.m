//
//  FXTableView.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/27.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableView.h"
#import <MyFloatLayout.h>

@interface FXTableView ()

@property (nonatomic, strong) MyFloatLayout *rootLayout;

@property (nonatomic, assign) NSInteger cellTag;

@end

@implementation FXTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configBasicView];
    }
    return self;
}

- (void)configBasicView
{
    _rootLayout = [[MyFloatLayout alloc] initWithOrientation:MyOrientation_Vert];
    _rootLayout.myHorzMargin = 0;  //宽度和滚动条视图保持一致。
    _rootLayout.topPadding = 0;
    _rootLayout.bottomPadding = 10;
    _rootLayout.myHeight = MyLayoutSize.wrap;
    _rootLayout.subviewVSpace = 0;
    _rootLayout.heightSize.lBound(self.heightSize, 1, 1);
    [self addSubview:_rootLayout];
    [self addLineView];
}

- (void)addFXSubview:(UIView *)view
{
    [self.rootLayout addSubview:view];
    [self addLineView];
}

- (void)addLineView
{
    UIView *lineView = [[UIView alloc] init];
    lineView.clearFloat = YES;     //换行重新布局。
    lineView.backgroundColor = [UIColor lightGrayColor];
    lineView.alpha = 0.5;
    lineView.myLeft = 0;
    lineView.myRight = 0;
    lineView.weight = 1.0;
    lineView.heightSize.equalTo(@0.5);
    [self.rootLayout addSubview:lineView];
}

@end
