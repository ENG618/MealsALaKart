//
//  ENGResearchViewController.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/15/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGResearchViewController.h"

@interface ENGResearchViewController (){
    //Establishing array for article objects
    NSMutableArray *articles;
}

@end

@implementation ENGResearchViewController

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
    
    //Initilazing array
    articles = [[NSMutableArray alloc] init];
    
    //Adding article objects to array
    ENGResearchDB *article = [[ENGResearchDB alloc] init];
    article.articleTitle = @"No app for that? Write one!";
    article.docType = @"Article";
    article.source = @"Industrial Engineer: IE. Mar2012, Vol. 44 Issue 3, p44-48. 5p.";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=71838012&site=ehost-live";
    article.description = @"The article looks at the need for more industrial engineering measurement tool applications for mobile devices, suggesting that engineers can write their own customized applications software for specific productivity uses. Particular focus is given to the development of applications for Apple Computer Inc. mobile devices using the Apple operating system iOS Software Development Kit (SDK) Xcode, including the formatting of user interfaces for various device sizes, how to apply for distribution on the product distribution platform iTunes, and application testing. The author provides an example of his development of the time study data collection application Time & Rate. INSET: APPLE AND ANDROID.";
    [articles addObject:article];
    
    article = [[ENGResearchDB alloc]init];
    article.articleTitle = @"Top iOS Apps.";
    article.docType = @"Product Review";
    article.source = @"PC Magazine. Aug2013, p418-421. 4p.";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=89095138&site=ehost-live";
    article.description = @"The article evaluates various iPhone operating system (iOS) applications including Awesome Note (+Todo/Calendar), Kayak Pro, Navigon Global Positioning System (GPS) navigation solution.";
    [articles addObject:article];
    
    article = [[ENGResearchDB alloc]init];
    article.articleTitle = @"Apple Unveils iOS 7: The 'Biggest Change to iOS' Since the iPhone's Debut.";
    article.docType = @"Article";
    article.source = @"Macworld. Aug2013, Vol. 30 Issue 8, p26-27. 2p.";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=88802798&site=ehost-live";
    article.description = @"The article discusses computer company Apple Inc. and the release of the iOS 7 mobile operating system for the company's iPhone smartphone, focusing on an analysis of the iOS 7 program and Apple Inc. chief executive officer Tim Cook's comments about the iOS product at the Worldwide Development Conference which was held in June 2013. Multitasking and the Safari Internet browser are mentioned, along with the AirDrop mobile device application and Apple Inc.'s iTunes music service.";
    [articles addObject:article];
    
    article = [[ENGResearchDB alloc]init];
    article.articleTitle = @"Apple Targets Education With iOS 7.";
    article.docType = @"Article";
    article.source = @"Electronic Education Report. 7/8/2013, Vol. 20 Issue 14, p1-7. 2p.";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=ehh&AN=89650205&site=ehost-live";
    article.description = @"The article discusses the release of iPhone operating system (iOS) 7 by Apple which helps schools purchase, distribute and handle applications (apps). It states that the iOS 7 has a single-sign-on features that will permit user credential to be used across apps. It mentions that the App Store Volume Purchase Program will allow educational institutions to apps to users while maintaining the ownership and control over app licences.";
    [articles addObject:article];
    
    article = [[ENGResearchDB alloc]init];
    article.articleTitle = @"Responsive Web Design, Discoverability, and Mobile Challenge.";
    article.docType = @"Article";
    article.source = @"Library Technology Reports. Aug/Sep2013, Vol. 49 Issue 6, p29-30. 11p.";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=ehh&AN=90405356&site=ehost-live";
    article.description = @"Responsive web design is one of the most recent trends that can help libraries meet their patrons' high expectations in the mobile-first culture of information consumption. Chapter 4 of Library Technology Reports (vol. 49, no. 6) \"The Library Mobile Experience: Practices and User Expectations\" provides several examples of responsive library websites, discusses some of the pitfalls of responsive web design, and argues for better discoverability of libraries' mobile (web or native) apps. Whether a library decides to develop a responsive site, a separate mobile site, or a native app, it is only part of the whole library mobile experience. Libraries' active presence on the mobile Web is now a must, and libraries need to skillfully and creatively adapt themselves to the new information landscape characterized by the abundance of information and the scarcity of human attention. [ABSTRACT FROM AUTHOR]";
    [articles addObject:article];
    
    article = [[ENGResearchDB alloc]init];
    article.articleTitle = @"DESIGN WITH THE user's needs IN MIND.";
    article.docType = @"Article";
    article.source = @"T+D. Jul2013, Vol. 67 Issue 7, p36-39. 4p. 2 Color Photographs.";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=88269565&site=ehost-live";
    article.description = @"The article discusses training program design and development for mobile communication devices, focusing on user-centered approaches. Recommendations include collecting data from target audiences to understand user behavior and testing user interfaces within the context of work environments. Topics include feedback, learning paths, and usability testing. Efficiency and minimalism in mobile application design are mentioned as strategies based on the guidelines of the web usability consultant Jakob Nielsen. INSET: Best Practices to Enhance the Mobile User Experience.";
    [articles addObject:article];
    
    article = [[ENGResearchDB alloc]init];
    article.articleTitle = @"Making the Mobile Web Faster.";
    article.docType = @"Article";
    article.source = @"Communications of the ACM. Mar2013, Vol. 56 Issue 3, p56-61. 6p. 1 Color Photograph, 1 ";
    article.url = @"http://search.ebscohost.com.oclc.fullsail.edu:81/login.aspx?direct=true&db=a9h&AN=89061601&site=ehost-live";
    article.description = @"The article discusses the construction and maintenance of application programming interfaces (APIs), focusing on the optimization of back-end systems for mobile applications as well as user interfaces. According to the article, the constraints of mobile devices include slower networks and processing power, screen size limitations, and cache content limits. Recommendations for developers include minimizing connections required to render Web pages, limiting image requests, prefetching data, minimizing domain name system lookups, and avoiding cookies.";
    [articles addObject:article];
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return articles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"RACell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    ENGResearchDB *current = [articles objectAtIndex:indexPath.row];
    cell.textLabel.text = [current articleTitle];
    cell.detailTextLabel.text = [current docType];
    
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
    ENGArticleViewController *avc = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    NSIndexPath *path = [self.tableView indexPathForSelectedRow];
    ENGResearchDB *c = articles[path.row];
    [avc setCurrentArticle:c];
}

@end
