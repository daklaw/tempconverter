//
//  TemperatureViewController.h
//  tempconverter
//
//  Created by David Law on 1/20/14.
//  Copyright (c) 2014 David Law. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TemperatureViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *fahrenheitTextField;
@property (nonatomic, weak) IBOutlet UITextField *celsiusTextField;

- (IBAction)onDoneButton;
- (IBAction)updateCelsius;
- (IBAction)updateFahrenheit;
@end
