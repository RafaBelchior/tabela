//
//  TabelaAppsDetailViewController.m
//  TabelaApps
//
//  Created by Rafael Souza Belchior da Silva on 26/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "TabelaAppsDetailViewController.h"

@interface TabelaAppsDetailViewController ()

@end

@implementation TabelaAppsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_appDetailName setText:_appDetails[0]];
    [_appDetailCategory setText:_appDetails[1]];
    [_appDetailDescription setText:_appDetails[2]];
    [_appDetailImage setImage:[UIImage imageNamed:_appDetails[3]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


//- (IBAction)volta:(id)sender {
//    [self dismissViewControllerAnimated:YES completion:nil];
//}
@end
