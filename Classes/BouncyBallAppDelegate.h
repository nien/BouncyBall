//
//  BouncyBallAppDelegate.h
//  BouncyBall
//
//  Created by Nien Lam on 2/26/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BouncyBallViewController;

@interface BouncyBallAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BouncyBallViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BouncyBallViewController *viewController;

@end

