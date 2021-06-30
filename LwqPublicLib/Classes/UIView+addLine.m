//
//  UIView+addLine.m
//  CDW
//
//  Created by ric on 2019/7/24.
//  Copyright © 2019 sd. All rights reserved.
//

#import "UIView+addLine.h"

@implementation UIView (addLine)
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addRightLine{
    return ^(NSInteger Margin,CGFloat Width,UIColor *color){
        UIView *line=View.addTo(self).bgColor(color);
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(Margin);
            make.bottom.offset(-Margin);
            make.width.mas_equalTo(Width);
            make.right.offset(0);
        }];
        return self;
    };
}
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addTopLine{
    return ^(NSInteger Margin,CGFloat Width,UIColor *color){
        UIView *line=View.addTo(self).bgColor(color);
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.offset(Margin);
            make.right.offset(-Margin);
            make.height.mas_equalTo(Width);
            make.top.offset(0);
        }];
        return self;
    };
}
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addBottomLine{
    return ^(NSInteger Margin,CGFloat Width,UIColor *color){
        UIView *line=View.addTo(self).bgColor(color);
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.offset(Margin);
            make.right.offset(-Margin);
            make.height.mas_equalTo(Width);
            make.bottom.offset(0);
        }];
        return self;
    };
}
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addleftLine{
    return ^(NSInteger Margin,CGFloat Width,UIColor *color){
        UIView *line=View.addTo(self).bgColor(color);
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.offset(Margin);
            make.bottom.offset(-Margin);
            make.width.mas_equalTo(Width);
            make.left.offset(0);
        }];
        return self;
    };
}
-(UIView* (^)(BOOL isShow))isShowAni{
    return ^(BOOL isShow){
        CGFloat animationTime=0.4;
        if (isShow) {//显示
            [UIView animateWithDuration:animationTime animations:^{
                self.opacity(1);
            }];
        }else{//不显示
            [UIView animateWithDuration:animationTime animations:^{
                self.opacity(0);
            }completion:nil];
        }
        return self;
    };
}

-(instancetype (^)(NSArray *colors,CGRect size))addGradientLayer{
    return ^(NSArray *colors,CGRect size){
        CAGradientLayer*layer =({
            CAGradientLayer*obj = [[CAGradientLayer alloc] init];
            obj.frame = size;
            obj.colors = @[
                (id)[colors[0] CGColor],
                (id)[colors[1] CGColor]
            ];
            obj.locations=@[@(0),@(1.0)];
            obj.startPoint=CGPointMake(0,0.5);
            obj.endPoint=CGPointMake(1,0.5);
            obj;
        });
        [self.layer addSublayer:layer];
        return self;
    };
};


+(instancetype)getObj:(void (^)(UIView *obj))creatBlock{
    return ({
        UIView *view=[[self alloc] init];
        creatBlock(view);
        view;
    });
}
+(instancetype)getObjInWindow:(void (^)(UIView *obj))creatBlock{
    return ({
        UIView *view=[[self alloc] init];
        view.addTo([UIApplication sharedApplication].keyWindow);
        creatBlock(view);
        view;
    });
}
+(instancetype)getObjAndSup:(UIView *)sup complete:(void(^)(UIView *obj))complete{
    return ({
        UIView *view=[[self alloc] init];
        view.addTo(sup);
        complete(view);
        view;
    });
}
@end
