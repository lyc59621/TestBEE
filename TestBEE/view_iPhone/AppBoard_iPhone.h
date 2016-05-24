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
//  AppBoard_iPhone.h
//  TestBEE
//
//  Created by JDragon on 15/9/9.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "Bee.h"

AS_UI( AppBoard_iPhone, appBoard )


@interface AppBoard_iPhone : BeeUIBoard



AS_SINGLETON( AppBoard_iPhone )


AS_SIGNAL(One)

AS_SIGNAL(Two)

AS_SIGNAL(Three)

AS_SIGNAL(mmmm)

- (void)showTabbar;


@end
