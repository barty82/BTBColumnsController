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
@property(nonatomic, strong, readwrite) UIScrollView *container;
@property(nonatomic, weak) UIView *parentView;
@end


#pragma mark - Implemention of 'BTBColumnsViewController'

@implementation BTBColumnsViewController
{
    BOOL _isAutoLayoutSupport;
}


#pragma mark - Constructors

- (instancetype)init
{
    if (self = [super init])
    {
        _container = [[UIScrollView alloc] init];
        [_container setBackgroundColor:[UIColor greenColor]];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
                 andAddToView:(UIView *)parentView
{
    if (self = [self init])
    {
        _parentView = parentView;
        
        [_container setFrame:frame];
        [self.view setFrame:frame];
        
        [self.view addSubview:_container];
    }
    
    return self;
}

- (instancetype)initAndAddToViewWithAutoLayout:(UIView *)parentView
{
    if (self = [self init])
    {
        _isAutoLayoutSupport = YES;
        
        _parentView = parentView;
    
        [self.view addSubview:_container];
        [self bootupWithAutoLayout:_container toSuperView:self.view];
    }
    
    return self;
}


#pragma mark - Life cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [_parentView addSubview:self.view];
    
    if (_isAutoLayoutSupport)
        [self bootupWithAutoLayout:self.view toSuperView:_parentView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    _container = nil;
}


#pragma mark - Bootup methods

- (void)bootupWithAutoLayout:(UIView *)view toSuperView:(UIView *)superView
{
    [self addConstrainsOnSuperView:superView
                   relatedWithView:view
            withVisualFormatString:@"H:|-(0)-[view]"];
    
    [self addConstrainsOnSuperView:superView
                   relatedWithView:view
            withVisualFormatString:@"H:[view]-(0)-|"];
    
    [self addConstrainsOnSuperView:superView
                   relatedWithView:view
            withVisualFormatString:@"V:|-(0)-[view]"];
    
    [self addConstrainsOnSuperView:superView
                   relatedWithView:view
            withVisualFormatString:@"V:[view]-(0)-|"];
    }

- (void)addConstrainsOnSuperView:(UIView *)superView
                 relatedWithView:(UIView *)view
          withVisualFormatString:(NSString *)visualFormatString
{
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    NSDictionary *viewsDic = nil;
    viewsDic = NSDictionaryOfVariableBindings(view);
    
    NSArray *constrains = nil;
    constrains = [NSLayoutConstraint
                  constraintsWithVisualFormat:visualFormatString
                  options:0
                  metrics:nil
                  views:viewsDic];
    
    [superView addConstraints:constrains];
}

@end


