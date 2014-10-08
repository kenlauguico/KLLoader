//
//  ViewController.h
//  KLLoaderExample
//
//  Created by Ken on 10/7/14.
//  Copyright (c) 2014 Ken Lauguico. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIStepper *uiStepper;
@property (strong, nonatomic) IBOutlet UIButton *button;
@property (strong, nonatomic) IBOutlet UISwitch *uiSwitch;

- (IBAction)clearLoading_pressed:(id)sender;

@end

