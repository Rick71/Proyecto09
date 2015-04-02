//
//  Preguntas.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Preguntas.h"
#import <Parse/Parse.h>
#import "CellTema.h"

NSMutableArray *Tema;
NSMutableArray *objetos;

@interface Preguntas ()

@end

@implementation Preguntas

- (void)viewDidLoad {
    [super viewDidLoad];
    [self reload];
}



-(void)reload{
    NSLog(@"Load");
    
    // Do any additional setup after loading the view.
// Inicializa la Base de Datos.
    Tema = [[NSMutableArray alloc] init];
        //nos trae la Información de Parse.
    PFQuery *query = [PFQuery queryWithClassName:@"Preguntas"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error)
     {
         objetos = [NSMutableArray arrayWithArray:objects];
         [self.TblMain reloadData];
         
     }];
    NSLog(@"%lu", (unsigned long)[objetos count]);
    NSLog(@"Exit load");
    
}

-(void)viewDidAppear:(BOOL)animated
{
    //[self.TblMain reloadData];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

