//
//  Pregunta.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 04/04/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Pregunta.h"
#import <Parse/Parse.h>

NSMutableArray *datos;
int posicion;

@interface Pregunta ()

@end

@implementation Pregunta

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    datos = [[NSMutableArray alloc] init];
    posicion = 0;
    
    
    PFQuery *query = [PFQuery queryWithClassName:@"Preguntas"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error){
        for(id object in objects){
            
            
            [datos addObject:object];
            NSLog(@"%@", object[@"Tema"]);
        }
    }];
    
    
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

- (IBAction)BtnA:(id)sender {
}

- (IBAction)BtnB:(id)sender {
}

- (IBAction)BtnC:(id)sender {
}

- (IBAction)BtnNext:(id)sender {
    
    PFObject *testObject = [PFObject objectWithClassName:@"panaderia"];
    
    testObject = datos[posicion];
    
    self.LblTemas.text = testObject[@"Tema"];
    self.LblPreguntas.text = testObject[@"Pregunta"];
    self.OpcionA.text = testObject[@"OpcionA"];
    self.OpcionB.text = testObject[@"OpcionB"];
    self.OpcionC.text = testObject[@"OpcionC"];
    //self.Contador.text = testObject[@"posicion"];
    posicion++;
}
@end
