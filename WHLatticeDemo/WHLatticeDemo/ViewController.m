//
//  ViewController.m
//  WHLatticeDemo
//
//  Created by 吴浩 on 2017/6/14.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "ViewController.h"

// 宽度(自定义)
#define PIC_WIDTH 70
// 高度(自定义)
#define PIC_HEIGHT 80
// 列数(自定义)
#define COL_COUNT 4

@implementation ViewController {
    NSArray<NSString *> *pictures;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadImage];
    [self addPictures];
}

/** 加载图片(本地) */
- (void)loadImage {
    NSMutableArray *picArray = [NSMutableArray array];
    for (int i = 0; i < 16; i++) {
        NSString *imageName = [NSString stringWithFormat:@"test_%d",i];
        [picArray addObject:imageName];
    }
    pictures = picArray.copy;
}

/** 九宫格形式添加图片 */
- (void)addPictures {
    
    // 在for循环中添加
    // pictures.count中的pictures是一个图片数组，代表着要添加多少个图片
    for (int i = 0; i < pictures.count; i++) {
        //创建图片
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:pictures[i]];
        
        // 图片所在行
        NSInteger row = i / COL_COUNT;
        // 图片所在列
        NSInteger col = i % COL_COUNT;
        // 间距
        CGFloat margin = (self.view.bounds.size.width - (PIC_WIDTH * COL_COUNT)) / (COL_COUNT + 1);
        // PointX
        CGFloat picX = margin + (PIC_WIDTH + margin) * col;
        // PointY
        CGFloat picY = margin + (PIC_HEIGHT + margin) * row;
        
        // 图片的frame
        imageView.frame = CGRectMake(picX, picY, PIC_WIDTH, PIC_HEIGHT);
        
        [self.view addSubview:imageView];
    }
}

@end
