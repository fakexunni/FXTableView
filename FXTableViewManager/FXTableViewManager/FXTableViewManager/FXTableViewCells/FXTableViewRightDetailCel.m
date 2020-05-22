//
//  FXTableViewRightDetailCell.m
//
//
//  Created by xunni zou on 2020/3/16.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewRightDetailCell.h"

@interface FXTableViewRightDetailCell ()

@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation FXTableViewRightDetailCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)configSubViewWithTitle:(NSString *)title
                   placeHolder:(NSString *)holderString
                        target:(id)target
                      selector:(SEL)sel

{
    self.rootLayout = [[MyFloatLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.rootLayout.myHorzMargin = 0;  //宽度和滚动条视图保持一致。
    self.rootLayout.myHeight = MyLayoutSize.fill;
    self.rootLayout.subviewVSpace = 0;
    
    [self.rootLayout setTarget:target action:sel];
    self.rootLayout.highlightedBackgroundColor = [UIColor colorWithWhite:0.95 alpha:1.0]; //可以设置高亮的背景色用于单击事件
    [self addSubview:self.rootLayout];
    
    _titleLabel = [UILabel new];
    _titleLabel.text = title;
    _titleLabel.myLeft = 12;
    _titleLabel.myTop = 7;
    _titleLabel.font = [UIFont systemFontOfSize:15];
    _titleLabel.clearFloat = YES;     //换行重新布局。
    _titleLabel.widthSize.equalTo(@100);
    _titleLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_titleLabel];
    
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"next"]];
    imageView.mySize = CGSizeMake(8, 14);
    [imageView sizeToFit];
    imageView.myTop = 15;
    imageView.myRight = 10;
    imageView.reverseFloat = YES;
    [self.rootLayout addSubview:imageView];


    _descLabel = [UILabel new];
    _descLabel.text = holderString;
    _descLabel.textColor = [UIColor darkGrayColor];
    _descLabel.textAlignment = NSTextAlignmentRight;
    _descLabel.myRight = 10;
    _descLabel.myTop = 7;
    _descLabel.reverseFloat = YES;
    _descLabel.font = [UIFont systemFontOfSize:14];
    _descLabel.weight = 0.8;
    _descLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_descLabel];
    self.myHeight = 44;
}


@end
