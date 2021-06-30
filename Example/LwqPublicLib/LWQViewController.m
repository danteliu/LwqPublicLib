//
//  LWQViewController.m
//  LwqPublicLib
//
//  Created by 1849245841@qq.com on 06/28/2021.
//  Copyright (c) 2021 1849245841@qq.com. All rights reserved.
//

#import "LWQViewController.h"

@interface LWQViewController ()

@end

@implementation LWQViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    LWQRandomView *view=[[LWQRandomView alloc]init];
    view.addTo(self.view);
    view.addBottomLine(0.5,2,Color(@"random"));

    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.offset(0);
        make.centerY.offset(0);
        make.height.mas_equalTo(50);
    }];
    LWQRandomView *view2=[LWQRandomView getObj:^(UIView * _Nonnull obj) {
        obj.addTo(self.view);
        [obj mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(WH(50, 50));
            make.centerX.offset(0);
            make.top.equalTo(view.mas_bottom).offset(100);
        }];
        obj.addBottomLine(0.5,2,Color(@"random"));
    }];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
