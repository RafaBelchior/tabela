//
//  TabelaAppsTableViewController.m
//  TabelaApps
//
//  Created by Rafael Souza Belchior da Silva on 26/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "TabelaAppsTableViewController.h"
#import "TabelaAppsDetailViewController.h"
#import "TabelaAppsTableViewCell.h"
#import "App.h"

@interface TabelaAppsTableViewController ()
{
    App *appData;
}
@end

@implementation TabelaAppsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    appData = [App instance];
    
    // Uncomment the following line to preserve selection between presentations.
     self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
     self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)viewWillAppear:(BOOL)animated{
    [self.tableView reloadData];
}

//-(void)viewDidAppear:(BOOL)animated{
//    [self.tableView numberOfRowsInSection:1];
//
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [appData.appName count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TabelaAppsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"appCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if(cell == nil){
        cell = [[TabelaAppsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"appCell"];
    }
    
    NSString *name = [appData.appName objectAtIndex:[indexPath row]];
    NSString *cat = [appData.appCategory objectAtIndex:[indexPath row]];
    NSString *img = [appData.appImages objectAtIndex:[indexPath row]];
    
    [[cell appName] setText:name];
    [[cell appCategory] setText:cat];
    [[cell appImage] setImage:[UIImage imageNamed:img]];
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [appData.appName removeObjectAtIndex:[indexPath row]];
        [appData.appCategory removeObjectAtIndex:[indexPath row]];
        [appData.appImages removeObjectAtIndex:[indexPath row]];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
    
}

//- (IBAction)addApp:(UIBarButtonItem *)sender {
//    [appData.appName addObject:repo];
//    NSIndexPath *paths = [NSIndexPath indexPathForRow:[repository indexOfObject:repo] inSection:0];
////    NSArray *paths = [NSArray arrayWithObject:[NSIndexPath indexPathForRow:[appData.appName count]-1 inSection:0]];
//    [[self tableView] beginUpdates];
//
//    [[self tableView] insertRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationTop];
//    [[self tableView] endUpdates];
    
//}
- (IBAction)unwindToList:(UIStoryboardSegue *)segue {
    
}

- (IBAction)add:(id)sender {
    
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view 
    if ([[segue identifier] isEqualToString:@"appDetalhes"])
    {
        TabelaAppsDetailViewController *detailViewController =
        [segue destinationViewController];
        
        NSIndexPath *myIndexPath = [self.tableView
                                    indexPathForSelectedRow];
        
        long row = [myIndexPath row];
        
        detailViewController.appDetails = @[appData.appName[row],
                                                appData.appCategory[row], appData.appDescription[row], appData.appImages[row]];
//        
//        detailViewController.appDetails =
//        @[[appData.appName objectAtIndex:[myIndexPath row]],
//          [appData.appCategory objectAtIndex:[myIndexPath row]],
//          [appData.appImages objectAtIndex:[myIndexPath row]],
//          [appData.appDescription objectAtIndex:[myIndexPath row]]];
    }
}


@end
