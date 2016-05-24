//
//  AppDelegate.m
//  TestBEE
//
//  Created by JDragon on 15/9/10.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "AppDelegate.h"
#import "AppBoard_iPhone.h"

@implementation AppDelegate



-(void)load
{
 
    bee.ui.config.ASR = YES;
    bee.ui.config.iOS7Mode = YES;
//    bee.ui.config.cacheAsyncLoad = YES;
//    bee.ui.config.cacheAsyncSave = YES;
    [BeeUINavigationBar setBackgroundColor:[UIColor greenColor]];;
    
    [BeeUINavigationBar setTitleColor:[UIColor blackColor]];
    [BeeUINavigationBar setTitleFont:[UIFont fontWithName:@"Avenir-Light" size:28]];
    
    if ( [BeeSystemInfo isDevicePad] )
    {
        self.window.rootViewController = [AppBoard_iPhone sharedInstance];
    }
    else
    {
//        UINavigationController   *nav = [[UINavigationController  alloc]initWithRootViewController:[AppBoard_iPhone sharedInstance]];
        
        
        
        self.window.rootViewController = [AppBoard_iPhone sharedInstance];
//        self.window.rootViewController = nav;
    }
    
//    [BeeUITipsCenter setDefaultContainerView:self.window.rootViewController.view];
    
    
    
}
@end
