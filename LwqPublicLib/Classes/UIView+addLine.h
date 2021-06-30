//
//  UIView+addLine.h
//  CDW
//
//  Created by ric on 2019/7/24.
//  Copyright © 2019 sd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Masonry/Masonry.h>
#import <NerdyUI/NerdyUI.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIView (addLine)
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addRightLine;/**< 添加右边线条(参数:边距,线宽,颜色) */
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addTopLine;/**< 添加头部线条(参数:边距,线宽,颜色) */
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addBottomLine;/**< 添加底部线条(参数:边距,线宽,颜色) */
-(UIView *(^)(NSInteger Margin,CGFloat Width,UIColor *color))addleftLine;/**<  添加左边线条(参数:边距,线宽,颜色) */
-(UIView* (^)(BOOL isShow))isShowAni;/**<  控制视图的显示 */


-(instancetype (^)(NSArray *colors,CGRect size))addGradientLayer;/**< 给视图添加 GradientLayer 层  colors:颜色数组>等于两个颜色  size:视图bounds */

/** 创建视图工厂方法 */
+(instancetype)getObj:(void (^)(UIView *obj))creatBlock;
+(instancetype)getObjInWindow:(void (^)(UIView *obj))creatBlock;
+(instancetype)getObjAndSup:(UIView *)sup complete:(void(^)(UIView *obj))complete;


@end

NS_ASSUME_NONNULL_END
