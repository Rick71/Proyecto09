//
//  GeneraPreguntas.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "GeneraPreguntas.h"

@interface GeneraPreguntas ()

@end

@implementation GeneraPreguntas

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

//Button

- (IBAction)BtnInicio:(id)sender {
    [self performSegueWithIdentifier:@"SegueGeneraPreguntasToIndex" sender:self];
}

- (IBAction)BtnAyuda:(id)sender {
    [self performSegueWithIdentifier:@"SegueGeneraPreguntasToAyuda" sender:self];
}

- (IBAction)BtnConsultarPreguntas:(id)sender {
    [self performSegueWithIdentifier:@"SegueGeneraPreguntasToListaPreguntas" sender:self];
}

- (IBAction)BtnGuardar:(id)sender {
    
    PFObject *testObject = [PFObject objectWithClassName:@"Preguntas"];
    testObject[@"Tema"] = self.TxtTema.text;
    testObject[@"Pregunta"] = self.TxtPregunta.text;
    testObject[@"OpcionA"] = self.TxtOpcionA.text;
    testObject[@"OpcionB"] = self.TxtOpcionB.text;
    testObject[@"OpcionC"] = self.TxtOpcionC.text;
    testObject[@"Respuesta"] = self.TxtRespuesta.text;
    if([testObject saveInBackground]){
        NSLog(@"Objeto Guardado en Parse");
    }
}


@end
