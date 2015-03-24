//
//  ViewController.h
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 03/03/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Index : UIViewController

//buttons
- (IBAction)BtnJugar:(id)sender;

- (IBAction)BtnRecords:(id)sender;

//buttons Tool Bar
- (IBAction)BtnReglas:(id)sender;

- (IBAction)BtnElaborarPreguntas:(id)sender;

//Image View
@property (strong, nonatomic) IBOutlet UIImageView *ImgIndexAppFrog;


@end

