//
//  TwoVC.m
//  TestBEE
//
//  Created by JDragon on 15/9/11.
//  Copyright (c) 2015年 JDragon. All rights reserved.
//

#import "TwoVC.h"
#import "OneVC.h"



@interface TwoVC ()


@end

@implementation TwoVC

DEF_STATIC_PROPERTY(HELLO)
DEF_SIGNAL(touch)
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
        self.navigationBarShown = YES;
        self.navigationBarTitle = @"welcome";
        self.view.backgroundColor = [UIColor  grayColor];
        BeeUIView  *view = [[BeeUIView  alloc]initWithFrame:CGRectMake(0, 400, 200, 200)];
    
        view.backgroundColor = [UIColor  blueColor];
        [self.view addSubview:view];
        NSLog(@"dada==%@",[TwoVC HELLO]);
    
        BeeUIButton  *btn = [BeeUIButton  new];
        [btn setTitle:@"我是btn"];
        btn.frame = CGRectMake(0, 100, 100, 30);
        [view addSubview:btn];
        btn.signal = @"btn";
    //    [btn addSignal:@"btn" forControlEvents:UIControlEventTouchUpInside object:@"我是btn"];
        [self sendUISignal:self.touch withObject:@"dasdad"];
}
/**
 *  事件传递
 *
 *  @param signal <#signal description#>
 */
-(void)handleUISignal:(BeeUISignal *)signal
{
    [super handleUISignal:signal];
    
    if ( [signal is:self.touch ]) {
        
        NSLog(@"我收到了self的信息＝＝ %@",signal.object);
        
    }
    if ([signal is:@"btn"])
    {
        
        NSLog(@"我收到了Btn的信息＝＝ %@",signal.object);
        
        OneVC  *one = [[OneVC alloc]initWithNibName:@"OneVC" bundle:[NSBundle mainBundle]];
        [self.navigationController pushViewController:one animated:true];
    }
    
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
