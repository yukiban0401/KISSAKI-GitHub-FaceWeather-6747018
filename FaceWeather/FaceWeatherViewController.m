//
//  FaceWeatherViewController.m
//  FaceWeather
//
//  Created by Toru Inoue on 11/07/28.
//  Copyright 2011 KISSAKI. All rights reserved.
//

#import "FaceWeatherViewController.h"


@implementation FaceWeatherViewController
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [YokohamaButton release];
        [yokohamaLabel release];
    [tokyoButton release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [YokohamaButton release];
    YokohamaButton = nil;
        [yokohamaLabel release];
    yokohamaLabel = nil;
    [tokyoButton release];
    tokyoButton = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

/**
 inoue
 */
- (IBAction)yokohamaTapped:(id)sender {
    //yokohamaButton が押されたら、yokohamaButtonの位置を変えよう。
    
    NSDictionary * placeDict = [[NSDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithInt:46], @"placeNumber",nil];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"BUTTON_TAPPED" object:nil userInfo:placeDict];

    
    [UIView beginAnimations:@"ykohamaButtonが移動するアニメーション" context:self.view];
    [UIView setAnimationDelay:0.5];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:NO];

    [YokohamaButton setFrame:CGRectMake(100, 50, 50, 50)];
    [yokohamaLabel setFrame:CGRectMake(40, 50, 50, 50)];
    
    [UIView commitAnimations];
}

/**
 tan_go
 */
- (IBAction)tan_goTapped:(id)sender {
    NSDictionary * placeDict = [[NSDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithInt:48], @"placeNumber",nil];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"BUTTON_TAPPED" object:nil userInfo:placeDict];
    
}

- (IBAction)tokyoTapped:(id)sender {
    //tokyoBottonが押されたら、tokyoBottonの位置を変えよう。
   
    NSDictionary * placeDict = [[NSDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithInt:48], @"placeNumber",nil];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"BUTTON_TAPPED" object:nil userInfo:placeDict];
   
    [UIView beginAnimations:@"tokyoButtonが移動するアニメーション" context:self.view];

    [UIView setAnimationDelay:1.0];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self.view cache:NO];
   
    [tokyoButton setFrame:CGRectMake(200, 70, 50, 50)];

    [UIView commitAnimations];
}

- (IBAction)shizuokaTapped:(id)sender {NSDictionary * placeDict = [[NSDictionary alloc]initWithObjectsAndKeys:[NSNumber numberWithInt:34], @"placeNumber",nil];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"BUTTON_TAPPED" object:nil userInfo:placeDict];
}

@end
