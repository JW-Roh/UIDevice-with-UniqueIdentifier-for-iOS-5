//
//  UIDeviceAdditionViewController.m
//  UIDeviceAddition
//
//  Created by Georg Kitz on 20.08.11.
//  Copyright 2011 Aurora Apps. All rights reserved.
//

#import "UIDeviceAdditionViewController.h"
#import "UIDevice+IdentifierAddition.h"

@implementation UIDeviceAdditionViewController

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad{
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 300, 150)];
    label.numberOfLines = 0;
    label.textAlignment = UITextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"Unique Device Identifier:\n%@\n%@",
                  [[UIDevice currentDevice] uniqueDeviceIdentifier],
				  [[UIDevice currentDevice] uniqueDeviceSHAIdentifier:224]];
    
    [self.view addSubview:label];
    [label release];
                  
    label = [[UILabel alloc] initWithFrame:CGRectMake(10, 210, 300, 150)];
    label.numberOfLines = 0;
    label.textAlignment = UITextAlignmentCenter;
    label.text = [NSString stringWithFormat:@"Unique GLOBAL Device Identifier:\n%@\n%@",
                  [[UIDevice currentDevice] uniqueGlobalDeviceIdentifier],
				  [[UIDevice currentDevice] uniqueGlobalDeviceSHAIdentifier:224]];
                  
    [self.view addSubview:label];
    [label release];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
