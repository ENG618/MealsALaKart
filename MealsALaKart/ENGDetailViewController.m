//
//  ENGDetailViewController.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/10/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGDetailViewController.h"

@interface ENGDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *currentItem;
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
@property (weak, nonatomic) IBOutlet UILabel *quantityLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;


@end

@implementation ENGDetailViewController
//Done button to return to tableview
- (IBAction)dismiss:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:self.currentIcon.fileName];
    //[self.currentIcon setItem:image];
    
    self.title = self.currentIcon.item;
    
    self.detailsLabel.text = [self.currentIcon item];
    self.quantityLabel.text = [self.currentIcon quantity];
    self.priceLabel.text = [self.currentIcon price];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
