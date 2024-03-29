//
//  SolutionTwoAppDelegate.h
//  SolutionTwo
//
//  Created by Haifa Carina Baluyos on 4/2/12.
//  Copyright 2012 NMG Resources, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SolutionTwoViewController.h"

@interface SolutionTwoAppDelegate : NSObject <UIApplicationDelegate> {
    
    SolutionTwoViewController *viewController;
    UINavigationController *navController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) SolutionTwoViewController *viewController;
@property (nonatomic, retain) UINavigationController *navController;

@property (nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property (nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property (nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
