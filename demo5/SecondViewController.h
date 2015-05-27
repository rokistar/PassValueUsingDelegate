//
//  SecondViewController.h
//  demo5
//
//  Created by Roki on 5/27/15.
//  Copyright (c) 2015 Roki. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol secondViewControllerDelegate <NSObject>
- (NSString *)value;
@end

@interface SecondViewController : UIViewController

@property (nonatomic,assign) id <secondViewControllerDelegate> delegate;

@end

