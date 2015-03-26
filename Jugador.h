//
//  Jugador.h
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 05/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Jugador : UIViewController

//Buttons
- (IBAction)BtnListo:(id)sender;


//Buttons ToolBar
- (IBAction)BtnInicio:(id)sender;

- (IBAction)BtnReglas:(id)sender;

//Text
@property (strong, nonatomic) IBOutlet UITextField *TxtNombre;

@property (strong, nonatomic) IBOutlet UITextField *TxtApellido;

@property (strong, nonatomic) IBOutlet UITextField *TxtEdad;

@end
