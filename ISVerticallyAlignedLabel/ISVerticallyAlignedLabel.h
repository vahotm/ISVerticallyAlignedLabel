//
//  ISVerticallyAlignedLabel.h
//
//  Created by Ivan Samalazau on 14.11.14.
//  Copyright (c) 2014 Ivan Samalazau. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ISVerticalAlignment) {
    ISVerticalAlignmentCenter = 0,
    ISVerticalAlignmentTop = 1,
    ISVerticalAlignmentBottom = 2
};

@interface ISVerticallyAlignedLabel : UILabel
{
    UIEdgeInsets _actualTextInsets;
}

@property (nonatomic, assign) UIEdgeInsets textInsets;
@property (nonatomic, assign) ISVerticalAlignment verticalAlignment;

@end
