//
//  TabelaAppsDetailViewController.h
//  TabelaApps
//
//  Created by Rafael Souza Belchior da Silva on 26/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TabelaAppsDetailViewController : UIViewController

@property (strong, nonatomic) NSArray *appDetails;
@property (weak, nonatomic) IBOutlet UIImageView *appDetailImage;
@property (weak, nonatomic) IBOutlet UILabel *appDetailName;
@property (weak, nonatomic) IBOutlet UILabel *appDetailCategory;
@property (weak, nonatomic) IBOutlet UILabel *appDetailDescription;

//- (IBAction)volta:(id)sender;
@end
