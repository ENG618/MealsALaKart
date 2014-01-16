//
//  ENGGroceryViewController.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/10/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGGroceryViewController.h"

@interface ENGGroceryViewController (){
    NSMutableArray *itemDetails;
}

@end

@implementation ENGGroceryViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Create array
    itemDetails = [[NSMutableArray alloc] init];
    
    //Adding icons and data to MutableArray
    ENGItem *icon = [[ENGItem alloc] init];
    icon.item = @"Apple";
    icon.fileName = @"apple";
    icon.quantity = @"5";
    icon.price = @"$3.99 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Banana";
    icon.fileName = @"banana";
    icon.quantity = @"12";
    icon.price = @"$1.99 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Bread";
    icon.fileName = @"bread";
    icon.quantity = @"2";
    icon.price = @"2.59 BOGO";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Candy";
    icon.fileName = @"candy";
    icon.quantity = @"1 bag";
    icon.price = @"$4.99";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Carrots";
    icon.fileName = @"carrot";
    icon.quantity = @"1 pk";
    icon.price = @"$3.99";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Cheese";
    icon.fileName = @"cheese";
    icon.quantity = @"1/2 lb";
    icon.price = @"$4.29 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Cherries";
    icon.fileName = @"cherries";
    icon.quantity = @"1 bag";
    icon.price = @"$5.25 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Corn";
    icon.fileName = @"corn";
    icon.quantity = @"4 cans";
    icon.price = @"2/$1.59";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Drinks";
    icon.fileName = @"drinks";
    icon.quantity = @"5 2 lieters";
    icon.price = @"2/$1.00";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Fish";
    icon.fileName = @"fish";
    icon.quantity = @"2.5 lbs";
    icon.price = @"7.99 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Grapes";
    icon.fileName = @"grapes";
    icon.quantity = @"1/2 lb";
    icon.price = @"3.35 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Hot Dogs";
    icon.fileName = @"hotdog";
    icon.quantity = @"1 pk";
    icon.price = @"$4.99";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Ice Cream";
    icon.fileName = @"iceCream";
    icon.quantity = @"1 pint";
    icon.price = @"$3.50";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Lemons";
    icon.fileName = @"lemon";
    icon.quantity = @"2";
    icon.price = @"5/$5.00";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Onion";
    icon.fileName = @"onion";
    icon.quantity = @"2";
    icon.price = @"2.25 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Pears";
    icon.fileName = @"pear";
    icon.quantity = @"6";
    icon.price = @"$3.35 / lb";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Pineapple";
    icon.fileName = @"pineapple";
    icon.quantity = @"1";
    icon.price = @"4.99";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Pizza";
    icon.fileName = @"pizza";
    icon.quantity = @"3";
    icon.price = @"5.55";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Popcorn";
    icon.fileName = @"popcorn";
    icon.quantity = @"1 box";
    icon.price = @"$4.25";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Pumpkin";
    icon.fileName = @"pumpkin";
    icon.quantity = @"1";
    icon.price = @"$$10.00";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Sausage";
    icon.fileName = @"sausage";
    icon.quantity = @"2 boxes";
    icon.price = @"$2.99 BOGO";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Turkey";
    icon.fileName = @"turkey";
    icon.quantity = @"1";
    icon.price = @"$3.99 / lb ";
    [itemDetails addObject:icon];
    
    icon = [[ENGItem alloc] init];
    icon.item = @"Wine";
    icon.fileName = @"wine";
    icon.quantity = @"4 bottles";
    icon.price = @"$15.00";
    [itemDetails addObject:icon];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (IBAction)editTable:(id)sender {
    
    //Putting table in editing modse
    if (self.isEditing) {
        //if in editing mode, take out
        self.editing = NO;
        self.navigationItem.rightBarButtonItem.title = @"Edit";
    }else{
        //if not in editing mode, put into
        self.editing = YES;
        self.navigationItem.rightBarButtonItem.title = @"Done";
        
    }
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //Check if in edit mode
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        
        //Remove item from array
        [itemDetails removeObjectAtIndex:indexPath.row];
        
        //Remove item from tableview
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return itemDetails.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    ENGItem *current = [itemDetails objectAtIndex:indexPath.row];
    cell.textLabel.text = [current item];
    cell.detailTextLabel.text = [current quantity];
    cell.imageView.image = [UIImage imageNamed:current.fileName];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    ENGDetailViewController *pvc = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    //Get selected row
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    ENGItem *c = itemDetails[path.row];
    [pvc setCurrentIcon:c];
    
    
}


@end
