//
//  HelloPolyViewController.h
//  HelloPoly
//
//  Created by Kelley Lange on 4/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloPolyViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *numberOfSidesLabel;

@property (weak, nonatomic) IBOutlet UIButton *decreaseButton;

@property (weak, nonatomic) IBOutlet UIButton *increaseButton;

@end
