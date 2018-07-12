//
//  ViewController.h
//  ViewHierarchy
//
//  Created by Tomer Ben-Rachel on 11/07/2018.
//  Copyright © 2018 Tomer Ben-Rachel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyOwnView.h"


@interface ViewController : UIViewController

@property (nonatomic, strong) MyOwnView * ownView;
@property (nonatomic, strong) MyOwnView * secondOwnView;
@property (nonatomic, strong) MyOwnView * thirdOwnView;

@end

