//
//  Gracias.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 09/04/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Gracias.h"

@interface Gracias ()

@end

@implementation Gracias

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



- (IBAction)BtnJugarDeNuevo:(id)sender {
    
    [self performSegueWithIdentifier:@"SegueGraciasToPregunta" sender:self];
}
- (IBAction)BtnInicio:(id)sender {
    [self performSegueWithIdentifier:@"SegueGraciasToIndex" sender:self];
}
@end
