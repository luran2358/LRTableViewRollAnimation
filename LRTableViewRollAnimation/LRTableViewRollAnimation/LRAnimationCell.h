//
//  LRAnimationCell.h
//  LRTableViewRollAnimation
//
//  Created by luran on 16/7/13.
//  Copyright © 2016年 luran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LRAnimationCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImage;

/**
 *  Xib创建Cell
 */
+ (instancetype)perceicedErrorCellFromXib:(UITableView *)tableView cellAnchorPoint:(CGPoint)cellAnchorPoint angle:(CGFloat)angle;

@end
