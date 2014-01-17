//
//  ENGAddItemViewController.h
//  MealsALaKart
//
//  Created by Eric Garcia on 1/15/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ENGData.h"

@interface ENGAddItemViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UITextView *tView;

@end
