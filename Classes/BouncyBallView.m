//
//  BouncyBallView.m
//  BouncyBall
//
//  Created by Nien Lam on 2/26/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "BouncyBallView.h"


@implementation BouncyBallView


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)awakeFromNib {
	// Get screen width and height
	CGRect bounds = [[UIScreen mainScreen] bounds];
	width  = bounds.size.width;
	height = bounds.size.height;
	
	xpos = width/2;
	ypos = height/2;
	
	size = 60;       // Width of the shape
	
	xspeed = 3;  // Speed of the shape
	yspeed = 3;  // Speed of the shape
	
	xdirection = 1;  // Left or Right
	ydirection = 1;  // Top to Bottom

	// Setup timer
	[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}


- (void) onTimer {
	// Update the position of the shape
	xpos = xpos + ( xspeed * xdirection );
	ypos = ypos + ( yspeed * ydirection );
	
	// Test to see if the shape exceeds the boundaries of the screen
	// If it does, reverse its direction by multiplying by -1
	if (xpos >= width-size || xpos <= 0) {
		xdirection *= -1;
	}
	if (ypos >= height-size || ypos <= 0) {
		ydirection *= -1;
	}
	
	[self setNeedsDisplay];	
}


- (void)drawRect:(CGRect)rect {
	// Draw the shape
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGRect currentRect   = CGRectMake(xpos, ypos, size, size);
	CGContextAddEllipseInRect(context, currentRect);
	CGContextDrawPath(context, kCGPathFillStroke);
}


- (void)dealloc {
    [super dealloc];
}


@end
