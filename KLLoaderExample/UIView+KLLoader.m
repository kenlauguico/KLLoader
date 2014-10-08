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
    CGSize viewSize = self.frame.size;
    
    UIActivityIndicatorView *loader = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleGray)];
    loader.frame = self.bounds;
    loader.center = (CGPoint){viewSize.width/2, viewSize.height/2};
    [loader startAnimating];
    
    [self addSubview:loader];
    
    self.tag = 1;
}

- (void)kl_dismissLoader
{
    for (id view in self.subviews) {
        if ([view isKindOfClass:[UIActivityIndicatorView class]])
            [view removeFromSuperview];
    }
    
    self.tag = 0;
}

- (void)kl_addLoader:(UIActivityIndicatorView *)loader
{
    if ([self isKindOfClass:[UITextField class]]) {
        
        [[(UITextField *)self rightView] addSubview:loader];
        
    } else {
        
        [self addSubview:loader];
    }
}

@end
