//
//  ViewController.m
//  KLLoaderExample
//
//  Created by Ken on 10/7/14.
//  Copyright (c) 2014 Ken Lauguico. All rights reserved.
//

#import "ViewController.h"
#import "UIView+KLLoader.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addTouchObservers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addTouchObservers
{
    [_button addTarget:self action:@selector(addLoader:) forControlEvents:(UIControlEventTouchUpInside)];
    [_uiSwitch addTarget:self action:@selector(addLoader:) forControlEvents:(UIControlEventTouchUpInside)];
    [_uiStepper addTarget:self action:@selector(addLoader:) forControlEvents:(UIControlEventTouchUpInside)];
    
}

- (void)addLoader:(UIView *)sender
{
    if (sender.tag == 0) {
        [sender kl_showLoader];
    }
}

- (IBAction)clearLoading_pressed:(id)sender
{
    [_button kl_dismissLoader];
    [_uiSwitch kl_dismissLoader];
    [_uiStepper kl_dismissLoader];
}
@end
