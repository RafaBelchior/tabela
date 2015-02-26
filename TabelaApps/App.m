//
//  App.m
//  TabelaApps
//
//  Created by Rafael Souza Belchior da Silva on 26/02/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "App.h"

@implementation App
@synthesize appImages,appCategory,appDescription,appName;

static App * instance = nil;

+(App *) instance{
    if (instance == nil){
        instance = [[App alloc] initWithObjects];
    }
    return instance;
}
-(id)initWithObjects {
    if (self) {
        appName = [[NSMutableArray alloc]init];
        appCategory = [[NSMutableArray alloc]init];
        appDescription = [[NSMutableArray alloc]init];
        appImages = [[NSMutableArray alloc]init];
        
        [appName addObject:@"Contador"];
        [appName addObject:@"Genius"];
        [appName addObject:@"Lista"];
        
        [appCategory addObject:@"Utilitários"];
        [appCategory addObject:@"Jogos"];
        [appCategory addObject:@"Utilitários"];
        
        [appDescription addObject:@"Conta pessoas na balada"];
        [appDescription addObject:@"Jogo de memória"];
        [appDescription addObject:@"Lista os aplicativos em uma tabela"];
        
        [appImages addObject:@"contador.png"];
        [appImages addObject:@"genius.png"];
        [appImages addObject:@"lista.png"];
    }
    return self;
}

@end
