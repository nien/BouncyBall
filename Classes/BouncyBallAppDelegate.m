//
//  BouncyBallAppDelegate.m
//  BouncyBall
//
//  Created by Nien Lam on 2/26/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "BouncyBallAppDelegate.h"
#import "BouncyBallViewController.h"

@implementation BouncyBallAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
