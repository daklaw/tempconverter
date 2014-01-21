//
//  TemperatureViewController.m
//  tempconverter
//
//  Created by David Law on 1/20/14.
//  Copyright (c) 2014 David Law. All rights reserved.
//

#import "TemperatureViewController.h"

@interface TemperatureViewController ()

@end

@implementation TemperatureViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.fahrenheitTextField.delegate = self;
    self.celsiusTextField.delegate = self;
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField Delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(onDoneButton)];
    textField.text = @"";
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    self.navigationItem.rightBarButtonItem = nil;
    
    return YES;
}

#pragma mark - Private Methods

- (void)onDoneButton {
    [self.view endEditing:YES];
}

- (void)updateCelsius {
    // takes the Fahrenheit value and converts it into
    // Celsius
    float fahrenheitTemp = [self.fahrenheitTextField.text floatValue];
    float celsiusTemp = (fahrenheitTemp - 32) * 5 / 9;
    self.celsiusTextField.text = [NSString stringWithFormat:@"%0.1f", celsiusTemp];
}

- (void)updateFahrenheit {
    // takes the Celsius value and converts it to
    // Fahrenheit
    float celsiusTemp = [self.celsiusTextField.text floatValue];
    float fahrenheitTemp = celsiusTemp * 9 / 5 + 32;
    self.fahrenheitTextField.text = [NSString stringWithFormat:@"%0.1f", fahrenheitTemp];
}

@end
