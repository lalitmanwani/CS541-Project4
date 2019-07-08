//
//  GraphViewController.h
//  CS541-Project4
//
//  Created by Admin on 7/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DrawGraph.h"
#import "Networker.h"
NS_ASSUME_NONNULL_BEGIN

@interface GraphViewController : UIViewController

@property (nonatomic,strong) IBOutlet DrawGraph *drawGraph;
@property(nonatomic, strong) Networker *networker;
@property (weak, nonatomic) IBOutlet UISlider *mslider;


@end

NS_ASSUME_NONNULL_END
