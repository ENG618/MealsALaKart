//
//  ENGAddItemViewController.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/15/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGAddItemViewController.h"

@interface ENGAddItemViewController ()

@end

@implementation ENGAddItemViewController
@synthesize tView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)insertNewObject:(id)sender{
    
}    
    
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    if (self.tView) {
        self.tView.text = [self.tView description];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
