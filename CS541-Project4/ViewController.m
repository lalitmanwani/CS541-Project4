//
//  ViewController.m
//  CS541-Project4
//
//  Created by Admin on 7/8/19.
//  Copyright © 2019 Admin. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CustomCell *cell = [[CustomCell alloc]init];
    cell.strimg= @"Origin.jpg";
    cell.strlb1= @"Dan Brown";
    cell.strlb2 = @"Origin";
    
    
    _arrdata = [[NSMutableArray alloc]initWithObjects:cell, nil];
 
    self.tableview.rowHeight = UITableViewAutomaticDimension;
    self.tableview.estimatedRowHeight = 170;
   
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    CustomCell *maincell = [_arrdata objectAtIndex:indexPath.row];
    UIImageView *image1 = (UIImageView *)[cell viewWithTag:1];
    image1.image = [UIImage imageNamed:maincell.strimg];
    UILabel *lb1 = (UILabel *)[cell viewWithTag:2];
    lb1.text = maincell.strlb1;
    UILabel *lb2 = (UILabel *)[cell viewWithTag:3];
    lb2.text = maincell.strlb2;
    return cell;
}



- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrdata.count;
}


@end
