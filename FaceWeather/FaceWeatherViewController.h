//
//  FaceWeatherViewController.h
//  FaceWeather
//
//  Created by Toru Inoue on 11/07/28.
//  Copyright 2011 KISSAKI. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FaceWeatherViewController : UIViewController {
    IBOutlet UIButton *YokohamaButton;
    IBOutlet UILabel *yokohamaLabel;
    IBOutlet UIButton *tokyoButton;
    }

- (IBAction)yokohamaTapped:(id)sender;
- (IBAction)tan_goTapped:(id)sender;
- (IBAction)tokyoTapped:(id)sender;
- (IBAction)shizuokaTapped:(id)sender;



@end
