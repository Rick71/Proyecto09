//
//  Pregunta.h
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 04/04/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Pregunta : UIViewController

//Labels

@property (strong, nonatomic) IBOutlet UILabel *LblTemas;

@property (strong, nonatomic) IBOutlet UILabel *LblPreguntas;

@property (strong, nonatomic) IBOutlet UILabel *OpcionA;

@property (strong, nonatomic) IBOutlet UILabel *OpcionB;

@property (strong, nonatomic) IBOutlet UILabel *OpcionC;


@property (strong, nonatomic) IBOutlet UILabel *Contador;

//Button

- (IBAction)BtnA:(id)sender;

- (IBAction)BtnB:(id)sender;

- (IBAction)BtnC:(id)sender;

- (IBAction)BtnNext:(id)sender;

@end
