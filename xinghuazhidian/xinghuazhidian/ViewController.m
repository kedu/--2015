//
//  ViewController.m
//  xinghuazhidian
//
//  Created by Apple on 16/11/11.
//  Copyright © 2016年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (instancetype)init
{
    self = [super init];
    if (self) {
    }
    return self;
}
//懒加载
- (NSMutableArray *)items{
    if (!_items) {
        self.items = [NSMutableArray arrayWithCapacity:0];
    }
    return _items;
}
//懒加载
- (NSMutableArray *)searchResults{
    if (!_searchResults) {
        self.searchResults = [NSMutableArray arrayWithCapacity:0];
    }
    return _searchResults;
}
//释放
- (void)dealloc
{
    self.items = nil;
    self.searchResults = nil;
    self.searchController = nil;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
