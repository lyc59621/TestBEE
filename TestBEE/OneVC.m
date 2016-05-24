//
//  OneVC.m
//  TestBEE
//
//  Created by JDragon on 15/9/10.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "OneVC.h"
#import "AppBoard_iPhone.h"
@interface OneVC ()
@property (strong, nonatomic) IBOutlet BeeUIView *aView;

@end

@implementation OneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationBarShown = YES;
    self.navigationBarTitle = @"首页";
    self.aView.layer.cornerRadius = 20;
    [self presentLoadingTips:@"加载中"];

    
}
ON_WILL_APPEAR( signal )
{
    
    [bee.ui.appBoard showTabbar];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
