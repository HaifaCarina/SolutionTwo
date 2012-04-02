//
//  PhotoEditViewController.h
//  TheLoveContract
//
//  Created by Haifa Carina Baluyos on 3/19/12.
//  Copyright 2012 NMG Resources, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalData.h"

@interface PhotoEditViewController : UIViewController <UIScrollViewDelegate> {
    UIScrollView *imageScrollView;
    UIImage *image;
    UIView *contentView;
}

@end
