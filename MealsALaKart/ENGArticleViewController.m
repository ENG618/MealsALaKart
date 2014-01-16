//
//  ENGArticleViewController.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/15/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGArticleViewController.h"

@interface ENGArticleViewController ()
@property (weak, nonatomic) IBOutlet UILabel *aTitle;
@property (weak, nonatomic) IBOutlet UILabel *type;
@property (weak, nonatomic) IBOutlet UILabel *source;
@property (weak, nonatomic) IBOutlet UILabel *aurl;

@end

@implementation ENGArticleViewController

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
    //title of navigation control
    self.title = self.currentArticle.articleTitle;
    
    //Setting the labels text
    self.aTitle.text = [self.currentArticle articleTitle];
    self.type.text = [self.currentArticle docType];
    self.source.text = [self.currentArticle source];
    self.aurl.text = [self.currentArticle url];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ENGArticleDetailViewController *advc = [segue destinationViewController];
    advc.currentArticle = self.currentArticle;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
