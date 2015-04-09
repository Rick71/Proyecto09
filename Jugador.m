//
//  Jugador.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Jugador.h"

UIAlertView *alert;

@interface Jugador ()

@end

@implementation Jugador

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
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

//Buttons



- (IBAction)BtnListo:(id)sender {
    
    NSString *Nombre  = self.Nombre.text;
    NSString *Apellido  = self.Apellido.text;
    NSString *Edad = self.Edad.text;
    
    if((Nombre.length == 0)||(Apellido.length == 0)||(Edad.length == 0)){
        alert = [[UIAlertView alloc] initWithTitle:@"Faltan campos!"
                                           message:@"Oops! Parece que no haz llenado todos los campos!"
                                          delegate:self
                                 cancelButtonTitle:@"Ok"
                                 otherButtonTitles: nil];
        [alert show];
    }
    
    else{
    //Implementacion de Parse
    PFObject *testObject = [PFObject objectWithClassName:@"Datos"];
    testObject[@"Nombre"] = self.Nombre.text;
    testObject[@"Apellido"] = self.Apellido.text;
    testObject[@"Edad"] = self.Edad.text;
        if([testObject saveInBackground]){
        NSLog(@"Objeto Guardado en Parse");
        }
    [self performSegueWithIdentifier:@"SegueJugadorToPregunta" sender:self];
    }
}

- (IBAction)BtnInicio:(id)sender {
    [self performSegueWithIdentifier:@"SegueJugadorToIndex" sender:self];
}

- (IBAction)BtnReglas:(id)sender {
    [self performSegueWithIdentifier:@"SegueJugadorToReglas" sender:self];
}
@end
