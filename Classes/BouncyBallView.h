//
//  BouncyBallView.h
//  BouncyBall
//
//  Created by Nien Lam on 2/26/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface BouncyBallView : UIView {
	int     size;          // Width of the shape
	CGFloat xpos, ypos;    // Starting position of shape    
	
	CGFloat xspeed;  // Speed of the shape
	CGFloat yspeed;  // Speed of the shape
	
	int xdirection;  // Left or Right
	int ydirection;  // Top to Bottom

	CGFloat width;   // Screen width
	CGFloat height;  // Screen height
}

@end
