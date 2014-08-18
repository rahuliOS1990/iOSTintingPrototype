//
//  ViewController.m
//  iOSTiniting
//
//  Created by R. Sharma on 8/14/14.
//  Copyright (c) 2014 AgileMobileDev. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
  
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = btn1.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor], (id)[[UIColor whiteColor] CGColor],(id)[[UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f] CGColor], nil];
  
    
    [gradient setShadowOpacity:0];
    
    gradient.cornerRadius=10.0f;
    
    CAGradientLayer *gradient1 = [CAGradientLayer layer];
    gradient1.frame =CGRectMake(5, 5, btn1.frame.size.width-10, btn1.frame.size.height-10);
     [gradient1 setColors:[NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],nil]];
    
        gradient1.cornerRadius=10.0f;
    
   
    [btn1 setAlpha:1];
    [btn1.layer insertSublayer:gradient atIndex:0];
    [btn1.layer insertSublayer:gradient1 atIndex:1];
    
    [btn1.layer setCornerRadius:10.0f];
    
    
    CAGradientLayer *gradient2 = [CAGradientLayer layer];
    gradient2.frame = btn2.bounds;
    gradient2.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor], (id)[[UIColor whiteColor] CGColor],(id)[[UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f] CGColor], nil];
    gradient2.cornerRadius=10.0f;

    
    
    [btn2.layer insertSublayer:gradient2 atIndex:0];
    [btn2.layer setCornerRadius:10.0f];

    
    
  
    UIButton *btnGrad=[UIButton buttonWithType:UIButtonTypeCustom];
    
    [btnGrad setFrame:CGRectMake(50, 50,200, 100)];
    
    [btnGrad setTitle:@"Button1" forState:UIControlStateNormal];
    [btnGrad setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    [btnGrad addTarget:self action:@selector(selectedGradButton:) forControlEvents:UIControlEventTouchUpInside];
    [btnGrad addTarget:self action:@selector(chnageGradient:) forControlEvents:UIControlEventTouchDown];
    
    // Adding Gradient
    
    CAGradientLayer *gradient11 = [CAGradientLayer layer];
    gradient11.frame =CGRectMake(5, 5, btnGrad.frame.size.width-10, btnGrad.frame.size.height-10);
    
    [gradient11 setColors:[NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],nil]];
    
    gradient11.cornerRadius=10.0f;
    
    
   
    
    [btnGrad.layer insertSublayer:gradient11 atIndex:0];

    
    [self.view addSubview:btnGrad];

    
     
	// Do any additional setup after loading the view, typically from a nib.
}

-(void)selectedGradButton:(UIButton*)btn
{
    
    
    btn.selected=!btn.selected;
    
    // Removing all sublayers added when highlighted
    
  //  CAGradientLayer *gradLayerToInsert=nil;
    
    for (int i=0;i<[btn.layer sublayers].count;i++) {
        CALayer *layer=[[btn.layer sublayers] objectAtIndex:i];
        NSLog(@"layer %@",layer);
        if ([layer isKindOfClass:NSClassFromString(@"CAGradientLayer")] ) {
            
             [layer removeFromSuperlayer];
           

        }
        
    }
   
    
   
    

    // Readding sublayer
    
        CAGradientLayer *gradient1 = [CAGradientLayer layer];
        gradient1.frame =btn.bounds;
    
        [gradient1 setColors:[NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],nil]];
    
        gradient1.cornerRadius=10.0f;
        
        
    
        [btn.layer insertSublayer:gradient1 atIndex:0];

    
    
}
-(void)chnageGradient:(UIButton*)btn
{
     NSLog(@" button%d",btn.state);
    
    for (int i=0;i<[btn.layer sublayers].count;i++) {
        CALayer *layer=[[btn.layer sublayers] objectAtIndex:i];
        NSLog(@"layer %@",layer);
        if ([layer isKindOfClass:NSClassFromString(@"CAGradientLayer")] ) {
            
            [layer removeFromSuperlayer];
            
            
        }
        
    }
    
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = btn.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor], (id)[[UIColor whiteColor] CGColor],(id)[[UIColor colorWithRed:128/255.0f green:128/255.0f blue:128/255.0f alpha:1.0f] CGColor], nil];
    
    
    [gradient setShadowOpacity:0];
    
    gradient.cornerRadius=10.0f;
    
    CAGradientLayer *gradient1 = [CAGradientLayer layer];
    gradient1.frame =CGRectMake(5, 5, btn.frame.size.width-10, btn.frame.size.height-10);
    [gradient1 setColors:[NSArray arrayWithObjects:(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],(id)[[UIColor colorWithRed:192/255.0f green:192/255.0f blue:192/255.0f alpha:1.0f] CGColor],nil]];
   
    gradient1.cornerRadius=10.0f;
    
    
    [btn setAlpha:1];
    [btn.layer insertSublayer:gradient atIndex:0];
    [btn.layer insertSublayer:gradient1 atIndex:1];
    
    [btn.layer setCornerRadius:10.0f];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
