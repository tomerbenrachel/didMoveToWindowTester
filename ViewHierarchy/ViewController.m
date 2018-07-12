//
//  ViewController.m
//  ViewHierarchy
//
//  Created by Tomer Ben-Rachel on 11/07/2018.
//  Copyright © 2018 Tomer Ben-Rachel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame = CGRectMake([[UIScreen mainScreen] bounds].origin.x, [[UIScreen mainScreen] bounds].origin.y, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    _ownView = [[MyOwnView alloc] initWithFrame:frame andName:@"first"];
    _ownView.rootViewController = self;
    [_ownView setBackgroundColor:[UIColor greenColor]];
    
    [self.view addSubview:_ownView];
    
    _secondOwnView = [[MyOwnView alloc] initWithFrame:frame andName:@"second"];
    _secondOwnView.rootViewController = self;
    [_secondOwnView setBackgroundColor:[UIColor orangeColor]];
    
    [_ownView addSubview:_secondOwnView];
    
    _thirdOwnView = [[MyOwnView alloc] initWithFrame:frame andName:@"third"];
    _thirdOwnView.rootViewController = self;
    [_thirdOwnView setBackgroundColor:[UIColor blueColor]];
    
    [_ownView addSubview:_thirdOwnView];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
