//
//  GraphViewController.m
//  CS541-Project4
//
//  Created by Admin on 7/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "GraphViewController.h"


@interface GraphViewController ()

@end

@implementation GraphViewController
@synthesize drawGraph;
@synthesize networker;
@synthesize mslider;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    networker = [[Networker alloc] init];
    [networker setBaseURL:@"https://cs.binghamton.edu/~pmadden/php/double.php"];
}





- (IBAction)slopechanged:(id)sender {

    
    UISlider *slope = (UISlider *)sender;
    NSLog(@"Slider Value %f",slope.value);
    
    //    [drawGraph x:[slider value]];
    
    drawGraph.m = slope.value;
    [drawGraph setNeedsDisplay];
}



- (IBAction)constant:(id)sender {
    
    
    
    
    UISlider *yinter = (UISlider *)sender;
    NSLog(@"Slider Value %f",yinter.value);
    
    //    [drawGraph x:[slider value]];
    
    drawGraph.c = yinter.value;
    [drawGraph setNeedsDisplay];
    
    

}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)updateDisplay:(NSDictionary *)data
{
    NSLog(@"Object is %@", data);
    
    NSArray *obj = [data valueForKey:@"result"];
    if (obj)
    {
        NSNumber *number = (NSNumber *)[obj objectAtIndex:0];

        float value = [number floatValue];
        
        drawGraph.m = value;
        [drawGraph setNeedsDisplay];
        
    }
}


- (IBAction)doublem:(id)sender {
    
    
    float original = mslider.value;
    
    NSString *myString = [NSString stringWithFormat:@"%f", original];
    
    NSDictionary *query = @{@"value":myString};
    [networker push:nil keys:query file:nil completionHandler:^(NSData * _Nonnull data, NSURLResponse * _Nonnull response, NSError * _Nonnull error) {
        NSLog(@"Got the result back.");
        NSError *jsonError;
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:NSASCIIStringEncoding error:&jsonError];
        
        NSLog(@"JSON result is %@", json);
        [self performSelectorOnMainThread:@selector(updateDisplay:) withObject:json waitUntilDone:NO];
        
    }];
    
    
    
}

@end
