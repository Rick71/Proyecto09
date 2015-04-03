//
//  Jugador.h
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Jugador : UIViewController<UIAlertViewDelegate>

//Buttons
- (IBAction)BtnListo:(id)sender;


//Buttons ToolBar

- (IBAction)BtnInicio:(id)sender;

- (IBAction)BtnReglas:(id)sender;


//Text

@property (strong, nonatomic) IBOutlet UITextField *Nombre;

@property (strong, nonatomic) IBOutlet UITextField *Edad;

@property (strong, nonatomic) IBOutlet UITextField *Apellido;

//tablet



@end
