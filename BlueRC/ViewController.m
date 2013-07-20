//
//  ViewController.m
//  BlueRC
//
//  Created by user on 7/20/13.
//  Copyright (c) 2013 Scott Cheezem. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end



@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.analogueStick = [[JSAnalogueStick alloc]initWithFrame:self.analogueStick.frame];
    self.analogStick.delegate = self;
    
    [self updateAnalogueLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)updateAnalogueLabel
{
	[self.analogTextLabel setText:[NSString stringWithFormat:@"Analogue: %.1f , %.1f", self.analogStick.xValue, self.analogStick.yValue]];
}

#pragma mark - JSAnalogueStickDelegate

- (void)analogueStickDidChangeValue:(JSAnalogueStick *)analogueStick
{
	[self updateAnalogueLabel];
}

@end
