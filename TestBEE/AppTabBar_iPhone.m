//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  AppTabBar_iPhone.m
//  TestBEE
//
//  Created by JDragon on 15/9/11.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "AppTabBar_iPhone.h"

#pragma mark -

DEF_UI(AppTabBar_iPhone, tabbar)

@implementation AppTabBar_iPhone

DEF_SINGLETON(AppTabBar_iPhone)

SUPPORT_RESOURCE_LOADING( YES )




- (void)load
{
    $(@"#badge-bg").HIDE();
    $(@"#badge").HIDE();
    [self selectOne];
    
    
}
- (void)unload
{
    
    
}
- (void)deselectAll
{
    $(@"#home-bg").HIDE();
    $(@"#cart-bg").HIDE();
    $(@"#user-bg").HIDE();
    $(@"#search-bg").HIDE();
    
    $(@"#homebutton").UNSELECT();
    $(@"#cartbutton").UNSELECT();
    $(@"#userbutton").UNSELECT();
    $(@"#searchbutton").UNSELECT();
    
  

}
- (void)selectOne
{
    [self deselectAll];
    
    $(@"#home-bg").SHOW();
    $(@"#homebutton").SELECT();
    self.RELAYOUT();
}
- (void)selectTwo
{
    [self deselectAll];
    $(@"#search-bg").SHOW();
    $(@"#searchbutton").SELECT();
    self.RELAYOUT();

}
- (void)selectThree
{
    [self deselectAll];
    $(@"#user-bg").SHOW();
    $(@"#userbutton").SELECT();
    self.RELAYOUT();
    
}
- (void)selectfour
{
    [self deselectAll];
    
    $(@"#cart-bg").SHOW();
    $(@"#cartbutton").SELECT();
    
    self.RELAYOUT();
}

- (void)dataDidChanged
{
    // TODO: fill data
}

- (void)layoutDidFinish
{
    // TODO: custom layout here
}

@end
