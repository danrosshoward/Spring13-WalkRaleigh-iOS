//
//  WalkYourCityViewController.m
//  WalkYourCity
//
//  Created by Dan Howard on 3/26/13.
//  Copyright (c) 2013 Dan Howard. All rights reserved.
//

#import "WalkYourCityViewController.h"
#define METERS_PER_MILE 1609.344

@interface WalkYourCityViewController ()

@end

@implementation WalkYourCityViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // moves the legal notice above the buttons so it will remain visible
    // sourced from http://stackoverflow.com/questions/13362850/move-legal-button-on-maps-ios-6/13365114#13365114
    UIView *legalView = nil;
    
    for (UIView *subview in self.mapView.subviews) {
        if ([subview isKindOfClass:[UILabel class]]) {
            legalView = subview;
        }
    }
    legalView.frame = CGRectMake(11, -60, legalView.frame.size.width, legalView.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// sourced from http://www.raywenderlich.com/21365/introduction-to-mapkit-in-ios-6-tutorial
- (void)viewWillAppear:(BOOL)animated {
    // 1
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 35.770385;
    zoomLocation.longitude= -78.678713;
    
    // 2
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.25*METERS_PER_MILE, 0.25*METERS_PER_MILE);
    
    // 3
    [_mapView setRegion:viewRegion animated:YES];
}

- (IBAction)mapListButton:(UIButton *)sender {
    sender.selected = !sender.selected;
}


- (IBAction)amusementButton:(UIButton *)sender {
    sender.alpha = (sender.alpha == 1) ? sender.alpha - .3 : sender.alpha + .3;
}
- (IBAction)landmarksButton:(UIButton *)sender {
    sender.alpha = (sender.alpha == 1) ? sender.alpha - .3 : sender.alpha + .3;
}

- (IBAction)commerceButton:(UIButton *)sender {
    sender.alpha = (sender.alpha == 1) ? sender.alpha - .3 : sender.alpha + .3;
}

- (IBAction)openSpaceButton:(UIButton *)sender {
    sender.alpha = (sender.alpha == 1) ? sender.alpha - .3 : sender.alpha + .3;
}

@end
