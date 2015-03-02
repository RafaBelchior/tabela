//
//  TabelaAppsTableViewController.h
//  TabelaApps
//
//  Created by Rafael Souza Belchior da Silva on 26/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabelaAppsTableViewController : UITableViewController

- (IBAction)unwindToList:(UIStoryboardSegue *)segue;
- (IBAction)add:(id)sender;

@end
