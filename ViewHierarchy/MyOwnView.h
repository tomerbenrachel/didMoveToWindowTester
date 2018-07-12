//
//  MyOwnView.h
//  ViewHierarchy
//
//  Created by Tomer Ben-Rachel on 11/07/2018.
//  Copyright © 2018 Tomer Ben-Rachel. All rights reserved.
//

@interface MyOwnView : UIView

@property (nonatomic, strong) UIViewController *rootViewController;
@property (nonatomic) NSString *viewName;

-(MyOwnView*)initWithFrame:(CGRect)frame andName:(NSString*)viewName;

@end
