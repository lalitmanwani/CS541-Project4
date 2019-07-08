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
    self.tableview.allowsMultipleSelectionDuringEditing = NO;
    
    CustomCell *cell = [[CustomCell alloc]init];
    cell.strimg= @"Origin.jpg";
    cell.strlb1= @"Dan Brown";
    cell.strlb2 = @"Origin";
    
    CustomCell *cell1 = [[CustomCell alloc]init];
    cell1.strimg= @"hp.jpg";
    cell1.strlb1= @"J K Rowling";
    cell1.strlb2 = @"Harry Potter and the Sorcerer's Stone";
    
    
    
    CustomCell *cell2 = [[CustomCell alloc]init];
    cell2.strimg= @"amish.jpg";
    cell2.strlb1= @"Amish Tripathi";
    cell2.strlb2 = @"Immortals of Mehula";
    
    CustomCell *cell3 = [[CustomCell alloc]init];
    cell3.strimg= @"art.jpg";
    cell3.strlb1= @"Mark Manson";
    cell3.strlb2 = @"The Subtle Art of Not Giving F*CK";
    
    
    CustomCell *cell4 = [[CustomCell alloc]init];
    cell4.strimg= @"hl.jpg";
    cell4.strlb1= @"Harper Lee";
    cell4.strlb2 = @"To Kill A Mocking Bird";
    
    
    CustomCell *cell5 = [[CustomCell alloc]init];
    cell5.strimg= @"jp.jpg";
    cell5.strlb1= @"James Patterson";
    cell5.strlb2 = @"Target";
    
    CustomCell *cell6 = [[CustomCell alloc]init];
    cell6.strimg= @"lean.jpg";
    cell6.strlb1= @"Sheryl Sandberg";
    cell6.strlb2 = @"Lean In";
    
    
    CustomCell *cell7 = [[CustomCell alloc]init];
    cell7.strimg= @"sk.jpg";
    cell7.strlb1= @"Stephen King";
    cell7.strlb2 = @"Pet Sematary";
    
    
    
    
    
    _arrdata = [[NSMutableArray alloc]initWithObjects:cell,cell1,cell2,cell3,cell4,cell5,cell6,cell7, nil];
 
    self.tableview.rowHeight = UITableViewAutomaticDimension;
    self.tableview.estimatedRowHeight = 130;
   
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


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        //add code here for when you hit delete
        
       // [_arrdata removeObject:indexPath.row];
        [_arrdata removeObjectAtIndex:indexPath.row];
        tableView.reloadData;
    }
}






@end
