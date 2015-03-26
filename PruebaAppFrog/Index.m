//
//  ViewController.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 03/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Index.h"

@interface Index ()

@end

@implementation Index

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)BtnReglas:(id)sender {
    [self performSegueWithIdentifier:@"SegueIndexToReglas" sender:self];
}

- (IBAction)BtnElaborarPreguntas:(id)sender {
    [self performSegueWithIdentifier:@"SagueIndexToClave" sender:self];
}


- (IBAction)BtnRecords:(id)sender {
    [self performSegueWithIdentifier:@"SegueIndexToRecords" sender:self];}

- (IBAction)BtnJugar:(id)sender {
    }

@end
