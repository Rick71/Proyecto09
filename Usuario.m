//
//  Usuario.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 02/04/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Usuario.h"


UIAlertView *alert;

@interface Usuario ()

@end

@implementation Usuario

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

- (IBAction)BtnLogin:(id)sender {
    NSString *Usuario  = self.TxtUsuario.text;
    NSString *Password  = self.TxtPassword.text;
    NSString *NombreUsuario = self.NombreUsuario.text;
    
    if((Usuario.length == 0)||(Password.length == 0)||(NombreUsuario.length == 0)){
        alert = [[UIAlertView alloc] initWithTitle:@"Faltan campos!"
                                           message:@"Oops! Parece que no haz llenado todos los campos!"
                                          delegate:self
                                 cancelButtonTitle:@"Ok"
                                 otherButtonTitles: nil];
        [alert show];
    }
    
    else{

        
            if ([self.TxtUsuario.text isEqualToString:@"walter"] & [self.TxtPassword.text isEqualToString:@"hola"]) {
            [self performSegueWithIdentifier:@"SegueUsuarioToGeneraPreguntas" sender:self];
            }
        
                else{
                    alert = [[UIAlertView alloc] initWithTitle:@"Login error!"
                                                       message:@"Usuario o Password Invalido!"
                                                      delegate:self
                                             cancelButtonTitle:@"Ok"
                                             otherButtonTitles: nil];
                    [alert show];
                }
    }
    
}
@end
