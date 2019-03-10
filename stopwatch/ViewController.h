//
//  ViewController.h
//  stopwatch
//
//  Created by Robert Enachescu on 10/03/2019.
//  Copyright © 2019 Robert Enachescu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    NSTimer *myTimer;
    BOOL running;
    int count;
}


@property (weak, nonatomic) IBOutlet UILabel *timerLabel;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property (weak, nonatomic) IBOutlet UIButton *resetBtn;

- (IBAction)startBtnPushed:(id)sender;
- (IBAction)resetBtnPushed:(id)sender;

- (void)updateTimer;



@end

