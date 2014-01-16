//
//  ENGArticleDetailViewController.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/15/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGArticleDetailViewController.h"

@interface ENGArticleDetailViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *description;

@end

@implementation ENGArticleDetailViewController

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
    //Setting deescription lable
    //self.description.text = [self.currentArticle description];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
