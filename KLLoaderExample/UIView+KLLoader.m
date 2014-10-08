//
//  UIView+KLLoader.m
//  KLLoaderExample
//
//  Created by Ken on 10/7/14.
//  Copyright (c) 2014 Ken Lauguico. All rights reserved.
//

#import "UIView+KLLoader.h"

@implementation UIView (KLLoader)

- (void)kl_showLoader
{
    UIActivityIndicatorView *loader = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleGray)];
    loader.center = self.center;
    [loader startAnimating];
    
    [self addSubview:loader];
}

- (void)kl_dismissLoader
{
    for (id view in self.subviews) {
        if ([view isKindOfClass:[UIActivityIndicatorView class]])
            [view removeFromSuperview];
    }
}

@end
