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
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.offset(0);
        make.centerY.offset(0);
        make.height.mas_equalTo(50);
    }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
