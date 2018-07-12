//
//  MyOwnView.m
//  ViewHierarchy
//
//  Created by Tomer Ben-Rachel on 11/07/2018.
//  Copyright © 2018 Tomer Ben-Rachel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyOwnView.h"


@implementation MyOwnView


- (MyOwnView*)initWithFrame:(CGRect)frame andName:(NSString*)viewName;
{
    self = [super initWithFrame: frame];
    if (self) {
        _viewName = viewName;
    }
    
    return self;
}

- (void)didMoveToWindow
{
    BOOL isHidden = [self isHidden];
    BOOL isOpaque = [self isOpaque];
    BOOL isVisible = !isHidden && isOpaque && self.window != nil && [self.window isKeyWindow];
    
    BOOL isFoundInHierarchy = [self foundInHierarchy];
    BOOL isViewHierarchyVisible = [self isViewHierarchyVisible];
    
    NSLog(@"TOMER didMoveToWindow Called %@", _viewName);
}

- (BOOL) foundInHierarchy
{
    NSArray *subviews = self.rootViewController.view.subviews;
    for (UIView *subview in subviews) {
        if([self isDescendantOfView:subview]) {
            return YES;
        }
    }
    
    return NO;
}

-(BOOL) isViewHierarchyVisible
{
    BOOL isViewHierarchyVisible = YES;
    UIView *view = self;
    
    while (view.superview != nil)
    {
        if (view.isHidden) {
            isViewHierarchyVisible = NO;
            break;
        }
        view = view.superview;
    }
    
    return isViewHierarchyVisible;
}

@end
