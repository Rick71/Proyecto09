//
//  GeneraPreguntas.h
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface GeneraPreguntas : UIViewController

//Button ToolBar
- (IBAction)BtnInicio:(id)sender;

- (IBAction)BtnAyuda:(id)sender;


//Button
- (IBAction)BtnConsultarPreguntas:(id)sender;

- (IBAction)BtnGuardar:(id)sender;
    //Parse Implementation

//Text
@property (strong, nonatomic) IBOutlet UITextField *TxtTema;

@property (strong, nonatomic) IBOutlet UITextField *TxtPregunta;

@property (strong, nonatomic) IBOutlet UITextField *TxtOpcionA;

@property (strong, nonatomic) IBOutlet UITextField *TxtOpcionB;

@property (strong, nonatomic) IBOutlet UITextField *TxtOpcionC;

@property (strong, nonatomic) IBOutlet UITextField *TxtRespuesta;

@end
