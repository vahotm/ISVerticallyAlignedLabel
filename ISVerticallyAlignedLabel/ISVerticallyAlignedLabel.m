//
//  ISVerticallyAlignedLabel.m
//
//  Created by Ivan Samalazau on 14.11.14.
//  Copyright (c) 2014 Ivan Samalazau. All rights reserved.
//

#import "ISVerticallyAlignedLabel.h"

@implementation ISVerticallyAlignedLabel

#pragma mark -
#pragma mark Drawing

- (void)drawTextInRect:(CGRect)rect
{
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, [self actualTextInsets])];
}

- (UIEdgeInsets)actualTextInsets
{
    UIEdgeInsets actualTextInsets = self.textInsets;
    CGRect actualBounds = UIEdgeInsetsInsetRect(self.bounds, self.textInsets);
    CGSize textSize = [self sizeThatFits:actualBounds.size];
    CGFloat heightDelta = actualBounds.size.height - textSize.height;
    
    switch (self.verticalAlignment) {
        case ISVerticalAlignmentCenter:
            actualTextInsets = UIEdgeInsetsMake(actualTextInsets.top + heightDelta / 2,
                                                actualTextInsets.left,
                                                actualTextInsets.bottom + heightDelta / 2,
                                                actualTextInsets.right);
            break;
        case ISVerticalAlignmentTop:
            actualTextInsets = UIEdgeInsetsMake(actualTextInsets.top,
                                                actualTextInsets.left,
                                                actualTextInsets.bottom + heightDelta,
                                                actualTextInsets.right);
            break;
        case ISVerticalAlignmentBottom:
            actualTextInsets = UIEdgeInsetsMake(actualTextInsets.top + heightDelta,
                                                actualTextInsets.left,
                                                actualTextInsets.bottom,
                                                actualTextInsets.right);
            break;
            
        default:
            break;
    }
    
    return actualTextInsets;
}

#pragma mark -
#pragma mark Accessors

- (void)setTextInsets:(UIEdgeInsets)textInsets
{
    if (UIEdgeInsetsEqualToEdgeInsets(textInsets, _textInsets)) {
        return;
    }
    
    _textInsets = textInsets;
    [self setNeedsDisplay];
}

- (void)setVerticalAlignment:(ISVerticalAlignment)verticalAlignment
{
    if (verticalAlignment == _verticalAlignment) {
        return;
    }
    
    _verticalAlignment = verticalAlignment;
    [self setNeedsDisplay];
}

@end
