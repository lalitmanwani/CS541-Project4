//
//  DrawGraph.m
//  CS541-Project4
//
//  Created by Admin on 7/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "DrawGraph.h"

@implementation DrawGraph
@synthesize m;
@synthesize c;
@synthesize y;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code

    CGContextRef context = UIGraphicsGetCurrentContext();

    
    
    CGContextMoveToPoint(context, rect.size.width/2, 0.0f); //start at this point
    
    CGContextAddLineToPoint(context, rect.size.width/2, rect.size.height); //draw to this point

    // and now draw the Path!
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, 0.0f, rect.size.height/2);
    CGContextAddLineToPoint(context, rect.size.width, rect.size.height/2);
    CGContextStrokePath(context);
    
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    
    y = m*50+c;
    
  
    CGContextSetLineWidth(context, 3.0f);
    
    CGContextMoveToPoint(context, rect.size.width/2, rect.size.height/2 + c); //start at this point
    
    CGContextAddLineToPoint(context, 50.0f, y); //draw to this point
    // and now draw the Path!
    CGContextStrokePath(context);
}


@end
