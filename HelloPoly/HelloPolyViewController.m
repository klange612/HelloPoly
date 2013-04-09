//
//  HelloPolyViewController.m
//  HelloPoly
//
//  Created by Kelley Lange on 4/8/13.
//  Copyright (c) 2013 Kurt Lange. All rights reserved.
//

#import "HelloPolyViewController.h"

@interface HelloPolyViewController ()

@property (nonatomic, strong) PolygonShape *poly1;

@end

@implementation HelloPolyViewController

@synthesize numberOfSidesLabel;
@synthesize poly1 = _poly1;


-(PolygonShape *)poly1
{
    if (!_poly1) _poly1 = [[PolygonShape alloc] initWithNumberOfSides:4 minimumNumberOfSides:2 maximumNumberOfSides:10];
   return _poly1;
}


- (IBAction)increaseButton
{
    self.poly1.numberOfSides += 1;
    numberOfSidesLabel.text = [NSString stringWithFormat: @"%i", self.poly1.numberOfSides];
    [self.poly1 descriptionFull];
}

- (IBAction)decreaseButton
{
    self.poly1.numberOfSides -= 1;
    numberOfSidesLabel.text = [NSString stringWithFormat: @"%i", [self.poly1 numberOfSides]];
    [self.poly1 descriptionFull];
}

-(void)awakeFromNib
{

}

+(void)initialize
{
/*    PolygonShape *poly1 = [[PolygonShape alloc]initWithNumberOfSides:4 minimumNumberOfSides:2 maximumNumberOfSides:10];
    NSLog(@"My Polygon init: %@", poly1);
*/
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    numberOfSidesLabel.text = [NSString stringWithFormat:@"%i", [self.poly1 numberOfSides]];
    NSLog(@"My Polygon: %@", self.poly1);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
