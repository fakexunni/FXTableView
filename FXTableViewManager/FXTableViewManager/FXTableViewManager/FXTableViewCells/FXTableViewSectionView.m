//
//  FXTableViewSectionView.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/28.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewSectionView.h"

@interface FXTableViewSectionView ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation FXTableViewSectionView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor colorWithWhite:0.98 alpha:1];
        self.rootLayout = [[MyFloatLayout alloc] initWithOrientation:MyOrientation_Vert];
        self.rootLayout.myHorzMargin = 0;  //宽度和滚动条视图保持一致。
        self.rootLayout.myHeight = MyLayoutSize.wrap;
        self.rootLayout.subviewVSpace = 0;
        [self addSubview:self.rootLayout];
        
        _titleLabel = [UILabel new];
        _titleLabel.textColor = [UIColor darkGrayColor];
        _titleLabel.myLeft = 12;
        _titleLabel.font = [UIFont systemFontOfSize:12];
        _titleLabel.clearFloat = YES;     //换行重新布局。
        _titleLabel.weight = 1.0;
        _titleLabel.heightSize.equalTo(@(MyLayoutSize.wrap));
        [self.rootLayout addSubview:_titleLabel];
    }
    return self;
}

- (void)configSubViewWithTitle:(NSString *)title
                   location:(FXTableViewSectionLocation)location
{
    _titleLabel.text = title?title:@"";
    if (location == FXTableViewSectionLocationHeader) {
        _titleLabel.myTop = 5;
    }
    else{
        _titleLabel.myBottom = 5;
    }
     self.myHeight = MyLayoutSize.wrap;
}


@end
