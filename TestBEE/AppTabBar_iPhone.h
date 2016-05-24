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
//  AppTabBar_iPhone.h
//  TestBEE
//
//  Created by JDragon on 15/9/11.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "Bee.h"

#pragma mark -



AS_UI(AppTabBar_iPhone, tabbar)


@interface AppTabBar_iPhone : BeeUICell



AS_SINGLETON(AppTabBar_iPhone)

- (void)selectOne;
- (void)selectTwo;
- (void)selectThree;
- (void)selectfour;


@end
