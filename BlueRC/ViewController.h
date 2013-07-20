//
//  ViewController.h
//  BlueRC
//
//  Created by user on 7/20/13.
//  Copyright (c) 2013 Scott Cheezem. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JSAnalogueStick.h"
#import "BLE.h"
@interface ViewController : UIViewController<JSAnalogueStickDelegate>
@property (weak, nonatomic) IBOutlet UILabel *analogTextLabel;
@property (weak, nonatomic) IBOutlet JSAnalogueStick *analogStick;

//@property (weak, nonatomic) IBOutlet JSAnalogueStick *analogueStick;
@property (nonatomic, strong) BLE *ble;


@end
