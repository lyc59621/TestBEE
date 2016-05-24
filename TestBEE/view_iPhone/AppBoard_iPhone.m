//
//   ______    ______    ______    
//  /\  __ \  /\  ___\  /\  ___\   
//  \ \  __<  \ \  __\_ \ \  __\_ 
//   \ \_____\ \ \_____\ \ \_____\ 
//    \/_____/  \/_____/  \/_____/ 
//
//  Powered by BeeFramework
//
//
//  AppBoard_iPhone.m
//  TestBEE
//
//  Created by JDragon on 15/9/9.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "AppBoard_iPhone.h"
#import "AppTabBar_iPhone.h"
#import "OneVC.h"
#import "TwoVC.h"
#import "ThreeVC.h"
#pragma mark -

#undef	TAB_HEIGHT
#define TAB_HEIGHT	44.0f

DEF_UI( AppBoard_iPhone, appBoard )


@implementation AppBoard_iPhone


{
    CGFloat _tabbarOriginY;
}
SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )
DEF_SINGLETON( AppBoard_iPhone )


DEF_SIGNAL(One)
DEF_SIGNAL(Two)
DEF_SIGNAL(Three)
DEF_SIGNAL(mmmm)

- (void)load
{

    



}
- (void)unload
{
    
    
    
    
    
}
ON_SIGNAL2(BeeUIBoard, signal)
{
    
//    if ( [signal is:BeeUIBoard.CREATE_VIEWS] )
//    {
//        
//        bee.ui.router[self.One]	= [OneVC class];
//        bee.ui.router[self.Two]	= [TwoVC  class];
//        bee.ui.router[self.Three]	= [ThreeVC class];
//        
//        
//        [self.view addSubview:bee.ui.router.view];
//        [self.view addSubview:bee.ui.tabbar];
//        [bee.ui.router open:self.One animated:YES];
//        
//        
//    }
    
    
    bee.ui.router[self.One]	= [[OneVC alloc]initWithNibName:@"OneVC" bundle:[NSBundle mainBundle]];
    
    bee.ui.router[self.Two]	= [[TwoVC alloc]initWithNibName:@"TwoVC" bundle:[NSBundle mainBundle]];
    
    bee.ui.router[self.Three]	= [[ThreeVC  alloc]initWithNibName:@"ThreeVC" bundle:[NSBundle mainBundle]];
    

    
    [self.view addSubview:bee.ui.router.view];
    [self.view addSubview:bee.ui.tabbar];
    
  
    _tabbarOriginY = self.viewBound.size.height - TAB_HEIGHT + 1;

     bee.ui.tabbar.frame = CGRectMake( 0, _tabbarOriginY, self.viewBound.size.width, TAB_HEIGHT );
    
    [bee.ui.router open:self.One animated:YES];

    
}

ON_SIGNAL(One)
{
    
    [bee.ui.tabbar selectOne];
    [bee.ui.router open:AppBoard_iPhone.One animated:NO];
}

ON_SIGNAL3(AppTabBar_iPhone, homebutton, signal)
{
    
    [bee.ui.tabbar selectOne];
    [bee.ui.router open:AppBoard_iPhone.One animated:NO];
    
    
}
ON_SIGNAL3(AppTabBar_iPhone, searchbutton, signal)
{
    
    [bee.ui.tabbar selectTwo];
    [bee.ui.router open:AppBoard_iPhone.Two animated:NO];
    
    
}
ON_SIGNAL3(AppTabBar_iPhone, cartbutton, signal)
{
    
    [bee.ui.tabbar selectfour];
    [bee.ui.router open:AppBoard_iPhone.Three animated:NO];
    
}
ON_SIGNAL3(AppTabBar_iPhone, userbutton, signal)
{
    
    [bee.ui.tabbar selectThree];
    [bee.ui.router open:AppBoard_iPhone.Three animated:NO];
    
    
}


#pragma mark Signal

ON_CREATE_VIEWS( signal )
{
    
    
}

ON_DELETE_VIEWS( signal )
{
    
}

ON_LAYOUT_VIEWS( signal )
{
    
}

ON_WILL_APPEAR( signal )
{
    
}

ON_DID_APPEAR( signal )
{
    
}

ON_WILL_DISAPPEAR( signal )
{
}

ON_DID_DISAPPEAR( signal )
{
}
ON_SIGNAL3( BeeUINavigationBar, LEFT_TOUCHED, signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
}
- (void)showTabbar
{
    _tabbarOriginY = self.view.height - TAB_HEIGHT + 1;
    
    CGRect tabbarFrame = bee.ui.tabbar.frame;
    tabbarFrame.origin.y = _tabbarOriginY;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelay:0.2];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    bee.ui.tabbar.frame = tabbarFrame;
    
    [UIView commitAnimations];
}

- (void)hideTabbar
{
    _tabbarOriginY = self.view.height;
    
    CGRect tabbarFrame = bee.ui.tabbar.frame;
    tabbarFrame.origin.y = _tabbarOriginY;
    
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.3];
    [UIView setAnimationDelay:0.2];
    [UIView setAnimationBeginsFromCurrentState:YES];
    
    bee.ui.tabbar.frame = tabbarFrame;
    
    [UIView commitAnimations];
}

@end
