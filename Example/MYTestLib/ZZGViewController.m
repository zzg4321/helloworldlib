//
//  ZZGViewController.m
//  MYTestLib
//
//  Created by zzg4321 on 01/07/2021.
//  Copyright (c) 2021 zzg4321. All rights reserved.
//

#import "ZZGViewController.h"
#import "GameEngineCocos.h"
@interface ZZGViewController ()

@end

@implementation ZZGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    float scale = [[UIScreen mainScreen] scale];
//    CGRect bounds = [[UIScreen mainScreen] bounds];
    
    self.view = [[GameEngineCocos getInstance]getGameView];
    self.view.backgroundColor = [UIColor redColor];
//    [self.view addSubview:[[GameEngineCocos getInstance]getGameView]];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
