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
UIAlertView *alert;
int posicion;
int contador;
int preguntasCorrectas;
char A;


@interface Pregunta ()

@end

@implementation Pregunta

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    contador = 0;
    preguntasCorrectas = 0;
    datos = [[NSMutableArray alloc] init];
    posicion = 1;
    
    
    PFQuery *query = [PFQuery queryWithClassName:@"Preguntas"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error){
        for(id object in objects){
            
            
            [datos addObject:object];
            //NSLog(@"%@", object[@"Respuesta"]);
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
    
   // int respuesta;
    
    PFObject *testObject = [PFObject objectWithClassName:@"Preguntas"];
    testObject = datos[posicion];
   
    
    NSLog(@"Respuesta correcta %@ Respuesta del Usuario A", testObject[@"Respuesta"]);
    
    if ([testObject[@"Respuesta"] isEqualToString:@"A"]) {
        
        preguntasCorrectas++;
        
        [self performSegueWithIdentifier:@"SeguePreguntaToCorrecto" sender:self];
    }else{
        [self performSegueWithIdentifier:@"SeguePreguntaToIncorrecto" sender:self];
    }
}

                    
- (IBAction)BtnB:(id)sender {
    PFObject *testObject = [PFObject objectWithClassName:@"Preguntas"];
    testObject = datos[posicion];
    
    
    NSLog(@"Respuesta correcta %@ Respuesta del Usuario B", testObject[@"Respuesta"]);
    
    if ([testObject[@"Respuesta"] isEqualToString:@"B"]) {
        
        preguntasCorrectas++;
        
        [self performSegueWithIdentifier:@"SeguePreguntaToCorrecto" sender:self];
    }else{
        [self performSegueWithIdentifier:@"SeguePreguntaToIncorrecto" sender:self];
    }
}

- (IBAction)BtnC:(id)sender {
    PFObject *testObject = [PFObject objectWithClassName:@"Preguntas"];
    testObject = datos[posicion];
    
    
    NSLog(@"Respuesta correcta %@ Respuesta del Usuario C", testObject[@"Respuesta"]);
    
    if ([testObject[@"Respuesta"] isEqualToString:@"C"]) {
        
        preguntasCorrectas++;
        
        [self performSegueWithIdentifier:@"SeguePreguntaToCorrecto" sender:self];
    }else{
        [self performSegueWithIdentifier:@"SeguePreguntaToIncorrecto" sender:self];
    }
}

- (IBAction)BtnNext:(id)sender {
    
    NSLog(@"Preguntas correctas %d", preguntasCorrectas);
    
    if(posicion < datos.count){
        PFObject *testObject = [PFObject objectWithClassName:@"Preguntas"];
        
        testObject = datos[posicion];
        
        self.LblTemas.text = testObject[@"Tema"];
        self.LblPreguntas.text = testObject[@"Pregunta"];
        self.OpcionA.text = testObject[@"OpcionA"];
        self.OpcionB.text = testObject[@"OpcionB"];
        self.OpcionC.text = testObject[@"OpcionC"];
        //self.Contador.text = testObject[@"posicion"];
        posicion++;
        contador++;
        self.Contador.text = [NSString stringWithFormat:@"%d", contador];
    }else{
        [self performSegueWithIdentifier:@"SeguePreguntaToIndex" sender:self];
        
    }
    
    
}

- (IBAction)BtnInicio:(id)sender {
    [self performSegueWithIdentifier:@"SeguePreguntaToIndex" sender:self];
}

- (IBAction)BtnReglas:(id)sender {
    [self performSegueWithIdentifier:@"SeguePreguntaToReglas" sender:self];
    
}
@end
