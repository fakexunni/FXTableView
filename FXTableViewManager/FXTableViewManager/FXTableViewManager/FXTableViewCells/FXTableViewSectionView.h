//
//  FXTableViewSectionView.h
//  FXTableViewManager
//
//  Created by xunni zou on 2020/4/28.
//  Copyright © 2020 xunni zou. All rights reserved.
//

#import "FXTableViewCellBase.h"

NS_ASSUME_NONNULL_BEGIN


typedef NS_ENUM(NSUInteger, FXTableViewSectionLocation) {
    FXTableViewSectionLocationHeader,
    FXTableViewSectionLocationFooter,
};

@interface FXTableViewSectionView : FXTableViewCellBase

- (void)configSubViewWithTitle:(NSString *)title
                      location:(FXTableViewSectionLocation)location;

@end

NS_ASSUME_NONNULL_END
