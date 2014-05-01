//
//  BTBViewController.m
//  BTBColumnsController
//
//  Created by Barty Kim on 4/23/14.
//  Copyright (c) 2014 BartysToolBox. All rights reserved.
//

#import "ViewController.h"
#import "BTBColumnsViewController.h"


#pragma mark - Interface extension of 'ViewController'

@interface ViewController ()
@end


#pragma mark - Implement of 'ViewController'

@implementation ViewController


#pragma mark - Life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    BTBColumnsViewController *columnVC = nil;
    columnVC = [[BTBColumnsViewController alloc]
                initAndAddToViewWithAutoLayout:self.view];
    
    [self addChildViewController:columnVC];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
