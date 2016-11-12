//
//  ViewController.h
//  xinghuazhidian
//
//  Created by Apple on 16/11/11.
//  Copyright © 2016年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kTableCell @tablecell

@interface ViewController : UISearchController
@property(nonatomic,retain)NSMutableArray *items;
@property(nonatomic,retain)UISearchController *searchController;
@property(nonatomic,retain)NSMutableArray *searchResults;//接收数据源结果

@end
