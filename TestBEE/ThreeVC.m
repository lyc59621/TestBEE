//
//  ThreeVC.m
//  TestBEE
//
//  Created by JDragon on 15/9/11.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "ThreeVC.h"

@interface ThreeVC ()
@property (strong, nonatomic) IBOutlet UIButton *OntBtn;

@end

@implementation ThreeVC


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
}

ON_SIGNAL3(ThreeVC, OntBtn, signal)
{
    
    NSLog(@"点我了");
    
}
-(void)touchAction
{
  NSLog(@"点我了");
    
}
-(void)handleUISignal:(BeeUISignal *)signal
{
    
    
    
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
