//
//  BTBColumnsViewControllerTest.m
//  BTBColumnsController
//
//  Created by Barty Kim on 4/24/14.
//  Copyright (c) 2014 BartysToolBox. All rights reserved.
//

@import XCTest;
#import <OCMock/OCMock.h>
#import "BTBColumnsViewController.h"


#pragma mark - Interface of 'BTBColumnsViewControllerTest'

@interface BTBColumnsViewControllerTest : XCTestCase
@end


#pragma mark - Implementation of 'BTBColumnsViewControllerTest'

@implementation BTBColumnsViewControllerTest
{
    BTBColumnsViewController *_viewController;
    UIView *_rootColumnView;
}

- (void)setUp
{
    [super setUp];
    
    _rootColumnView = [[UIView alloc] init];
    [_rootColumnView setBackgroundColor:[UIColor greenColor]];
    
    _viewController = [[BTBColumnsViewController alloc]
                       initWithRootColumnView:_rootColumnView
                       andFrame:CGRectMake(0, 0, 200, 200)];
}

- (void)tearDown
{
    _viewController = nil;
    
    [super tearDown];
}


#pragma mark - Structural TESTs

- (void)testClassShouldContainsInitWithRootColumnViewAndFrmae
{
    BTBColumnsViewController *vc = [[BTBColumnsViewController alloc] init];
    
    BOOL isAccessable = [vc respondsToSelector:@selector(initWithRootColumnView:andFrame:)];
    
    XCTAssertTrue(isAccessable, @"This class should have a constructor method called 'initWithRootColumnView:andFrame:'.");
}

- (void)testClassShouldContainsRootView
{
    BTBColumnsViewController *vc = [[BTBColumnsViewController alloc] init];
    
    BOOL isAccessable = [vc respondsToSelector:@selector(rootColumnView)];
    
    XCTAssertTrue(isAccessable, @"This class should have a property called 'rootColumnView'.");
}

- (void)testClassShouldContainsContainerView
{
    BTBColumnsViewController *vc = [[BTBColumnsViewController alloc] init];
    
    BOOL isAccessable = [vc respondsToSelector:@selector(container)];
    
    XCTAssertTrue(isAccessable, @"This class should have a property called 'container'.");
}

- (void)testClassShouldContainsDelegate
{
    BTBColumnsViewController *vc = [[BTBColumnsViewController alloc] init];
    
    BOOL isAccessable = [vc respondsToSelector:@selector(delegate)];
    
    XCTAssertTrue(isAccessable, @"This class should have a property called 'delegate'.");
}

- (void)testDelegateShouldContainsProtocolColumnViewAtIndex
{
    id delegateMock = [OCMockObject mockForProtocol:@protocol(BTBColumnsViewControllerDelegate)];
    
    BOOL isAccessable = [delegateMock respondsToSelector:@selector(columnViewAtIndex:)];
    
    XCTAssertTrue(isAccessable, @"This class should have a protocol method called 'columnViewAtIndex'.");

}

- (void)testDelegateShouldContainsProtocolNumberOfColumns
{
    id delegateMock = [OCMockObject mockForProtocol:@protocol(BTBColumnsViewControllerDelegate)];
    
    BOOL isAccessable = [delegateMock respondsToSelector:@selector(numberOfColumns)];
    
    XCTAssertTrue(isAccessable, @"This class should have a protocol method called 'numberOfColumns'.");
    
}


#pragma mark - TESTs for init

- (void)testInitShouldSetRootColumnView
{
    XCTAssertNotNil(_viewController.rootColumnView, @"This method should set rootColumnView property when this method called.");
}

- (void)testInitShouldSetSizeOfView
{
    CGSize viewSize = _viewController.view.frame.size;
    
    XCTAssertEqual(viewSize.width, 200, @"The width of container should be equal to 200.");
    
    XCTAssertEqual(viewSize.height, 200, @"The width of container should be equal to 200.");
}

@end
