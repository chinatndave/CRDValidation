//
//  ViewController.m
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtEmail;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnValidateEmail:(UIButton *)sender
{
    if([CRDValidation validateEmail:txtEmail.text isRequire:YES] == ValidationResult_Valid)
    {
        [sender setImage:[UIImage imageNamed:@"valid.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"invalid.png"] forState:UIControlStateNormal];
    }
}
@end
