//
//  BTBColumnsViewController.h
//  BTBColumnsController
//
//  Created by Barty Kim on 4/24/14.
//  Copyright (c) 2014 BartysToolBox. All rights reserved.
//

@import UIKit;


#pragma mark - Protocol of 'BTBColumnsViewControllerDelegate'

@protocol BTBColumnsViewControllerDelegate <NSObject>

@required

- (UIView *)columnViewAtIndex:(NSUInteger)index;
- (NSUInteger)numberOfColumns;

@optional


@end


#pragma mark - Interface of 'BTBColumnsViewController'

@interface BTBColumnsViewController : UIViewController

@property(nonatomic, copy) UIView *rootColumnView;
@property(nonatomic, readonly) UIScrollView *container;
@property(nonatomic, copy) id<BTBColumnsViewControllerDelegate> delegate;

- (instancetype)initWithRootColumnView:(UIView *)rootColumnView andFrame:(CGRect)frame;

@end
