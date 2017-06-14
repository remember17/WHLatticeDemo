# WHLatticeDemo
简单的九宫格算法与使用

 ![img](https://github.com/remember17/WHLatticeDemo/blob/master/img-folder/example3.png)


## 简单介绍
简单九宫格算法，可以帮你自动计算间距，对控件(Button/Label/imageView...)或view进行有序排列。并不复杂.

请下载demo查看

### 代码示例
```objc
// 宽度(自定义)
#define PIC_WIDTH 70
// 高度(自定义)
#define PIC_HEIGHT 80
// 列数(自定义)
#define COL_COUNT 4

/** 九宫格形式添加图片 */
- (void)addPictures {
    
    // 循环的次数代表将要创建图片个数，不要忘了这个for循环
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
```