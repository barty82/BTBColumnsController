//
//  BTBColumnsViewController.m
//  BTBColumnsController
//
//  Created by Barty Kim on 4/24/14.
//  Copyright (c) 2014 BartysToolBox. All rights reserved.
//

#import "BTBColumnsViewController.h"


#pragma mark - Interface extension of 'BTBColumnsViewController'

@interface BTBColumnsViewController ()
@property(nonatomic, readwrite) UIScrollView *container;
@end


#pragma mark - Implemention of 'BTBColumnsViewController'

@implementation BTBColumnsViewController


#pragma mark - Life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Constructors

- (instancetype)initWithRootColumnView:(UIView *)rootColumnView
                               andFrame:(CGRect)frame
{
    if (self = [super init])
    {
        [self.view setFrame:frame];
        _rootColumnView = rootColumnView;
        
    }
    
    return self;
}


@end
