//
//  SolutionTwoViewController.h
//  SolutionTwo
//
//  Created by Haifa Carina Baluyos on 4/2/12.
//  Copyright 2012 NMG Resources, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PhotoEditViewController.h"
#import "GlobalData.h"

@interface SolutionTwoViewController : UIViewController <UIScrollViewDelegate, UINavigationControllerDelegate, UIImagePickerControllerDelegate> {
    UIScrollView *scrollview1;
    UIImageView *photoView1;
    UIView *contentView1;
    UIImagePickerController *imgPicker;
    
}

@property (nonatomic, retain) UIView *contentView1;

@end
