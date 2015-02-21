//
//  MJSCXwingViewController.m
//  Xwing
//
//  Created by María Jesús Senosiain Caamiña on 20/02/15.
//  Copyright (c) 2015 María Jesús Senosiain Caamiña. All rights reserved.
//

#import "MJSCXwingViewController.h"

@interface MJSCXwingViewController ()

@end

@implementation MJSCXwingViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    
    // Creamos el gesture recognizer
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(userDidTap:)];
    
    // se lo encasquetamos a la vista
    [self.view addGestureRecognizer:tap];
}

-(void) userDidTap:(UITapGestureRecognizer*) tap {
    
    // Mirar el estado del reconocedor: si lo ha reconocido
    
    if (tap.state == UIGestureRecognizerStateRecognized) {
        // cambiamos la posicion de la vista del xwing
        
        //self.xwingView.center = [tap locationInView:self.view];
        
        
        UIViewAnimationOptions option = UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut;
        
        
        [UIView animateWithDuration:1.2 delay:0 options:option animations:^{
            self.xwingView.center = [tap locationInView:self.view];
        } completion:^(BOOL finished) {
            
        }];
        
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






@end
