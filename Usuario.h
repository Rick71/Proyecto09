//
//  Usuario.h
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 02/04/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Usuario : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate, UIAlertViewDelegate>


//Text

@property (strong, nonatomic) IBOutlet UITextField *TxtUsuario;

@property (strong, nonatomic) IBOutlet UITextField *TxtPassword;

@property (strong, nonatomic) IBOutlet UITextField *NombreUsuario;

//Button

- (IBAction)BtnLogin:(id)sender;



@end
