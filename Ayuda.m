//
//  Ayuda.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 26/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Ayuda.h"

@interface Ayuda ()

@end

@implementation Ayuda

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

- (IBAction)BtnRegresar:(id)sender {
    
    [self performSegueWithIdentifier:@"SegueAyudaToGeneraPreguntas" sender:self];
}
@end