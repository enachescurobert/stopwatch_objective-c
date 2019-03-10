//
//  ViewController.m
//  stopwatch
//
//  Created by Robert Enachescu on 10/03/2019.
//  Copyright © 2019 Robert Enachescu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize timerLabel,startBtn,resetBtn;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    running = NO;
    count = 0;
    timerLabel.text = @"00:00.00";
    
    startBtn.layer.cornerRadius = 45;
    resetBtn.layer.cornerRadius = 45;
}


- (IBAction)startBtnPushed:(id)sender {

    if (running == NO){
        running = YES;
        [startBtn setTitle:@"STOP" forState:UIControlStateNormal];
        
        if (myTimer == nil){
            
            myTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        }
    } else {
        running = NO;
        [myTimer invalidate];
        myTimer = nil;
        [startBtn setTitle:@"START" forState:UIControlStateNormal];
    }
    
}

- (IBAction)resetBtnPushed:(id)sender {
    
    running = NO;
    [myTimer invalidate];
    myTimer = nil;
    [startBtn setTitle:@"START" forState:UIControlStateNormal];
    count = 0;
    timerLabel.text = @"00:00.00";
}

-(void)updateTimer{
    
    count++;
    
    int min = floor(count/100/60);
    int sec = floor(count/100);
    int mSec = count % 100;

    if (sec >= 60) {
        sec = sec % 60;
    }
    
    timerLabel.text = [NSString stringWithFormat:@"%02d:%02d.%02d", min, sec, mSec];
}



@end
