//
//  Record.m
//  PruebaAppFrog
//
//  Created by Ricardo Vera on 06/04/15.
//  Copyright (c) 2015 Comercomp. All rights reserved.
//

#import "Record.h"

@interface Record ()

@end

@implementation Record

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   /*
        int counter = 0;
        pos = 0;
        
    
        NSDate *hoy = [[NSDate alloc] init];
        ScoreArray = [NSMutableArray arrayWithArray:[[DBScore getSharedInstance]allRecords]];
        NSDateFormatter *dateFormat  =[[NSDateFormatter alloc]init];
        [dateFormat setDateFormat:@"cccc, MMMM dd, YYYY, \n hh:mm aa"];
        NSString *prettyVersion = [dateFormat stringFromDate:hoy];
        
        for(NSArray *record in ScoreArray){
            if([[record objectAtIndex:1] integerValue] == lastScore){
                pos = counter;
            }
            counter++;
        }
        
        self.Intentos.text = [NSString stringWithFormat:@"%d", counter];
        self.Fecha.text = prettyVersion;
        
    }
    
*/
    
    
    
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

@end
