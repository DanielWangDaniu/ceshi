//
//  HomeViewController.m
//  04-网易新闻
//
//  Created by DanielWang on 2017/3/10.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "HomeViewController.h"
#import <YYModel.h>
#import "DataModels.h"
#import "ChannelLabel.h"

@interface HomeViewController ()
// 频道视图
@property (weak, nonatomic) IBOutlet UIScrollView *channelView;
// 新闻视图
@property (weak, nonatomic) IBOutlet UICollectionView *newsView;
// 布局对象
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLaout;
// 频道数据源
@property (nonatomic, strong) NSArray *channelModelArray;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self requestChannelData];
}

- (void)requestChannelData {
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"topic_news.json" ofType:nil];
    
    NSData *jsonData = [NSData dataWithContentsOfFile:jsonPath];
    
    //反序列化json数据
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:NULL];
    
    NSArray *arrayM = [dic objectForKey:@"tList"];
    
    NSArray *modelArray = [NSArray yy_modelArrayWithClass:[BaseClass class] json:arrayM];
    
    for (BaseClass *base in modelArray) {
        NSLog(@"%@",base);
        
    }
    self.channelModelArray = modelArray;
    
    CGFloat labelWidth = 80;
    CGFloat labelHeight = 44;
    
    for (int i = 0; i < self.channelModelArray.count; i++) {
        BaseClass *model = self.channelModelArray[i];
        
        ChannelLabel *channelLabel = [[ChannelLabel alloc]initWithFrame:CGRectMake(i * labelWidth, 0, labelWidth, labelHeight)];
        
        channelLabel.text = model.tname;
        
# pragma mark 字体大小和居中
        channelLabel.font = [UIFont systemFontOfSize:15];
        channelLabel.textAlignment = NSTextAlignmentCenter;
        [self.channelView addSubview:channelLabel];
    }
    self.channelView.contentSize = CGSizeMake(labelWidth * self.channelModelArray.count, labelHeight);
    self.channelView.showsVerticalScrollIndicator = NO;
    self.channelView.showsHorizontalScrollIndicator = NO;
}

@end
