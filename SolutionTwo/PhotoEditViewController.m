//
//  PhotoEditViewController.m
//  TheLoveContract
//
//  Created by Haifa Carina Baluyos on 3/19/12.
//  Copyright 2012 NMG Resources, Inc. All rights reserved.
//



#import "PhotoEditViewController.h"

@implementation PhotoEditViewController

- (void) doneAction {
    NSLog(@"done!");
    [GlobalData sharedGlobalData].fromEffectsTag = 1;
    [GlobalData sharedGlobalData].currentScrollView = imageScrollView;
}
- (void) loadView {
    [super loadView];
    
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] 
                                   initWithTitle:@"Done"                                            
                                   style:UIBarButtonItemStyleBordered 
                                   target:self 
                                   action:@selector(doneAction)];
    
    self.navigationItem.rightBarButtonItem = doneButton;
    [doneButton release];
    
    UIScrollView *tmpScrollView = [GlobalData sharedGlobalData].currentScrollView;
    imageScrollView = [[UIScrollView alloc]initWithFrame: CGRectMake(0, 0, tmpScrollView.frame.size.width, tmpScrollView.frame.size.height)];
    imageScrollView.delegate = self;
    imageScrollView.scrollEnabled = YES;
    imageScrollView.showsHorizontalScrollIndicator = YES;
    imageScrollView.showsVerticalScrollIndicator = YES;
    
    imageScrollView.maximumZoomScale = tmpScrollView.maximumZoomScale;
    imageScrollView.minimumZoomScale = tmpScrollView.minimumZoomScale;
    imageScrollView.backgroundColor = [UIColor greenColor];
    
    imageScrollView.contentSize = [GlobalData sharedGlobalData].currentPhotoView.frame.size;
    contentView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [GlobalData sharedGlobalData].currentPhotoView.frame.size.width, [GlobalData sharedGlobalData].currentPhotoView.frame.size.height)];
    [contentView addSubview:[GlobalData sharedGlobalData].currentPhotoView];
    [contentView sendSubviewToBack:[GlobalData sharedGlobalData].currentPhotoView];
    [imageScrollView addSubview:contentView];
    
    // SET ZOOM SCALE AND OFFSETS
    // Must be set after all scrollview subviews are added
    [imageScrollView setZoomScale:tmpScrollView.zoomScale animated:NO];
    [imageScrollView setContentOffset:CGPointMake(tmpScrollView.contentOffset.x , tmpScrollView.contentOffset.y)];
    
    [imageScrollView setCenter:CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds])-20)];
    
    
    
    
    [self.view  addSubview:imageScrollView];
   
    
}
#pragma mark -
#pragma mark UIScrollView Delegate

- (UIView*)viewForZoomingInScrollView:(UIScrollView *)aScrollView {
    NSLog(@"PhotoEditView Zoom");
    
    return contentView;
}
- (void)scrollViewDidEndZooming:(UIScrollView *)zoomedScrollView withView:(UIView *)view atScale:(float)scale
{
    NSLog(@"view scale %f", scale);
    
}
- (void) dealloc {
    [super dealloc];
}
@end
