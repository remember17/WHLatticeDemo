//
//  ViewController.m
//  WHLatticeDemo
//
//  Created by 吴浩 on 2017/6/14.
//  Copyright © 2017年 remember17. All rights reserved.
//

#import "ViewController.h"

#define PIC_WIDTH 70
#define PIC_HEIGHT 80
#define COL_COUNT 4

@implementation ViewController {
    NSArray<NSString *> *_pictures;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadImage];
    [self addPictures];
}

- (void)loadImage {
    NSMutableArray *picArray = [NSMutableArray array];
    for (int i = 0; i < 16; i++) {
        NSString *imageName = [NSString stringWithFormat:@"test_%d",i];
        [picArray addObject:imageName];
    }
    _pictures = picArray.copy;
}

- (void)addPictures {
    [_pictures enumerateObjectsUsingBlock:^(NSString * _Nonnull imageName, NSUInteger i, BOOL * _Nonnull stop) {
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.image = [UIImage imageNamed:imageName];
        NSInteger row = i / COL_COUNT;
        NSInteger col = i % COL_COUNT;
        CGFloat margin = (self.view.bounds.size.width - (PIC_WIDTH * COL_COUNT)) / (COL_COUNT + 1);
        CGFloat picX = margin + (PIC_WIDTH + margin) * col;
        CGFloat picY = margin + (PIC_HEIGHT + margin) * row;
        imageView.frame = CGRectMake(picX, picY, PIC_WIDTH, PIC_HEIGHT);
        [self.view addSubview:imageView];
    }];
}

@end
