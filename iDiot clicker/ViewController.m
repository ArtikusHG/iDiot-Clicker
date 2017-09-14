//
//  ViewController.m
//  iDiot clicker
//
//  Created by ArtikusHG on 9/14/17.
//  Copyright © 2017 ArtikusHG. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
int score = 0;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _click.layer.masksToBounds = YES;
    _click.layer.cornerRadius = 7.0;
    _rank.layer.masksToBounds = YES;
    _rank.layer.cornerRadius = 7.0;
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg.jpg"]];
    _score.textAlignment = NSTextAlignmentCenter;
}
- (IBAction)click:(id)sender {
    score = score + 1;
    NSString *textForLabel = [NSString stringWithFormat:@"%d",score];
    _score.text = textForLabel;
    if(score == 10) {
        _rank.image = [UIImage imageNamed:@"1.jpg"];
    }
    if(score == 50) {
        _rank.image = [UIImage imageNamed:@"2.jpg"];
    }
    if(score == 100) {
        _rank.image = [UIImage imageNamed:@"3.jpg"];
    }
    if(score == 500) {
        _rank.image = [UIImage imageNamed:@"4.jpg"];
    }
    if(score == 1000) {
        _rank.image = [UIImage imageNamed:@"5.jpg"];
    }
    if(score == 2500) {
        _rank.image = [UIImage imageNamed:@"6.jpg"];
    }
    if(score == 5000) {
        _rank.image = [UIImage imageNamed:@"7.jpg"];
    }
    if(score == 10000) {
        _rank.image = [UIImage imageNamed:@"8.jpg"];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
