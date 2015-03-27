//
//  Jugador.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Jugador.h"
UIAlertView     *alert;

@interface Jugador ()

@end

@implementation Jugador

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    /*Implementacion de Parse
    PFObject *testObject = [PFObject objectWithClassName:@"Preguntas"];
    testObject[@"Nombre"] = self.TxtNombre.text;
    testObject[@"Apellido"] = self.TxtApellido.text;
    testObject[@"Edad"] = self.TxtEdad.text;
        if([testObject saveInBackground]){
        NSLog(@"Objeto Guardado en Parse");
     */
 }



- (IBAction)BtnInicio:(id)sender {
    [self performSegueWithIdentifier:@"SegueJugadorToIndex" sender:self];
}

- (IBAction)BtnReglas:(id)sender {
    [self performSegueWithIdentifier:@"SegueJugadorToReglas" sender:self];
}
@end
