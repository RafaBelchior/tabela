//
//  App.h
//  TabelaApps
//
//  Created by Rafael Souza Belchior da Silva on 26/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface App : NSObject
{
    NSMutableArray *appName;
    NSMutableArray *appCategory;
    NSMutableArray *appDescription;
    NSMutableArray *appImages;
    
}
@property NSMutableArray *appName;
@property NSMutableArray *appCategory;
@property NSMutableArray *appDescription;
@property NSMutableArray *appImages;

+(App *) instance;
-(id) initWithObjects;
-(BOOL)addAppWithArray:(NSMutableArray *)valor;
@end
