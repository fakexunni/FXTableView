//
//  FXTableViewImageTitleCell.m
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/28.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewImageTitleCell.h"


@interface FXTableViewImageTitleCell ()

@property (nonatomic, strong) UILabel *leftTitleLabel;

@property (nonatomic, strong) UILabel *rightTitleLabel;

@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation FXTableViewImageTitleCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (void)configSubViewWithLeftTitle:(NSString *)leftTitleString
                         leftImage:(UIImage *)leftImage
                        rightTitle:(NSString *)rightTitleString
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
    
    _imageView = [[UIImageView alloc] initWithImage:leftImage];
    _imageView.mySize = CGSizeMake(30, 30);
    _imageView.myTop = 7.0;
    _imageView.myLeft = 12;
    [self.rootLayout addSubview:_imageView];

    
    _leftTitleLabel = [UILabel new];
    _leftTitleLabel.text = leftTitleString;
    _leftTitleLabel.myLeft = 5;
    _leftTitleLabel.myTop = 7;
    _leftTitleLabel.font = [UIFont systemFontOfSize:15];
    _leftTitleLabel.widthSize.equalTo(@100);
    _leftTitleLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_leftTitleLabel];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"next"]];
    imageView.mySize = CGSizeMake(8, 14);
    [imageView sizeToFit];
    imageView.myTop = 15;
    imageView.myRight = 10;
    imageView.reverseFloat = YES;
    [self.rootLayout addSubview:imageView];

    _rightTitleLabel = [UILabel new];
    _rightTitleLabel.text = rightTitleString;
    _rightTitleLabel.textColor = [UIColor darkGrayColor];
    _rightTitleLabel.textAlignment = NSTextAlignmentRight;
    _rightTitleLabel.myRight = 10;
    _rightTitleLabel.myTop = 7;
    _rightTitleLabel.reverseFloat = YES;
    _rightTitleLabel.font = [UIFont systemFontOfSize:14];
    _rightTitleLabel.weight = 0.8;
    _rightTitleLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_rightTitleLabel];
    self.myHeight = 44;
}

- (void)configSubViewWithLeftTitle:(NSString *)leftTitleString
                        rightImage:(UIImage *)rightImage
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
    
    _leftTitleLabel = [UILabel new];
    _leftTitleLabel.text = leftTitleString;
    _leftTitleLabel.myLeft = 12;
    _leftTitleLabel.myTop = 7;
    _leftTitleLabel.font = [UIFont systemFontOfSize:15];
    _leftTitleLabel.widthSize.equalTo(@100);
    _leftTitleLabel.heightSize.equalTo(@30);
    [self.rootLayout addSubview:_leftTitleLabel];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"next"]];
    imageView.mySize = CGSizeMake(8, 14);
    [imageView sizeToFit];
    imageView.myTop = 15;
    imageView.myRight = 10;
    imageView.reverseFloat = YES;
    [self.rootLayout addSubview:imageView];

    _imageView = [[UIImageView alloc] initWithImage:rightImage];
    _imageView.mySize = CGSizeMake(30, 30);
    _imageView.myTop = 7.0;
    _imageView.myRight = 10;
    _imageView.reverseFloat = YES;
    [self.rootLayout addSubview:_imageView];
    self.myHeight = 44;
}

@end
