//
//  LRAnimationCell.m
//  LRTableViewRollAnimation
//
//  Created by luran on 16/7/13.
//  Copyright © 2016年 luran. All rights reserved.
//

#import "LRAnimationCell.h"

static NSString * const LRCellId = @"LRAnimationCellId";

@implementation LRAnimationCell

+ (instancetype)cellFromXib:(UITableView *)tableView cellAnchorPoint:(CGPoint)cellAnchorPoint angle:(CGFloat)angle;
{
    
    LRAnimationCell *cell = [tableView dequeueReusableCellWithIdentifier:LRCellId];
    
    if (!cell) {
        
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
    }
    //动画设置
    CATransform3D transform = CATransform3DMakeRotation(angle, 0.0, 0.5, 0.3);
    /**
     
     struct CATransform3D
     {
     CGFloat m11, m12, m13, m14;
     CGFloat m21, m22, m23, m24;
     CGFloat m31, m32, m33, m34;
     CGFloat m41, m42, m43, m44;
     };
     
     typedef struct CATransform3D CATransform3D;
     
     m34:实现透视效果(意思就是:近大远小), 它的值默认是0, 这个值越小越明显
     
     */
    transform.m34 = -1.0/500.0; // 设置透视效果
    cell.layer.transform = transform;
    
    cell.layer.anchorPoint = cellAnchorPoint;
    
    [UIView animateWithDuration:0.6 animations:^{
        
        cell.layer.transform = CATransform3DIdentity;
    }];
    
    return cell;
}


@end
