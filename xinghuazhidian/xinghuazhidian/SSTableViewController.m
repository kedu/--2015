//
//  SSTableViewController.m
//  xinghuazhidian
//
//  Created by Apple on 16/11/10.
//  Copyright © 2016年 lkb-求工作qq:1218773641. All rights reserved.
//
#import "TableViewCell.h"
#import "SSTableViewController.h"
#import <iAd/iAd.h>

@interface SSTableViewController ()<UITableViewDataSource,UITableViewDelegate,ADBannerViewDelegate>
@property(nonatomic,strong)UISearchController*src;
@property(nonatomic,strong)ADBannerView*banner;
@property(nonatomic,strong)NSMutableArray*dataArray;
@end

@implementation SSTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableview=[[UITableView alloc]initWithFrame:CGRectMake(0, 108, 667, 800) style:UITableViewStylePlain];
    self.tableview.delegate=self;
    self.tableview.dataSource=self;
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.navigationItem.leftBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(love)];
    self.view.autoresizesSubviews=NO;
    
//
    UISearchBar*sb=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, 44)];
    sb.placeholder=@" 新华字典";
//    sb.showsCancelButton=YES;
    [self.view addSubview:sb];
    [self.view addSubview:self.tableview];
    [self.tableview registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    [self transform:@"汤文"];

}
-(void)love{
    NSLog(@"love");
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    if (section==0) {
        return 1;
    }
    else{
        return 10;}
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section==0) {
//        返回个广告
        ADBannerView*ad=[[ADBannerView alloc]init];
        ad.frame=CGRectMake(0, 0, self.view.frame.size.width, 35);
//        ad.backgroundColor=[UIColor redColor];
        ad.delegate=self;
        UITableViewCell*cell=[[UITableViewCell alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 38)];
        [cell addSubview:ad];
        NSLog(@"%f",cell.frame.size.height);
        UILabel*lb=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
        lb.text=@"我是广告";
        lb.backgroundColor=[UIColor darkGrayColor];
        lb.textAlignment=UITextAlignmentCenter;
        [cell addSubview:lb];
        return cell;
        
    }else{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (cell==nil) {
        cell=[[TableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }

        
      
    
        return cell;}
}
-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"%ld",(long)indexPath.section);
    NSLog(@"row%ld",(long)indexPath.row);

    return indexPath;
}
-(UITableView *)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(nonnull NSString *)title atIndex:(NSInteger)index{

    return tableView;
}
- (NSString *)transform:(NSString *)chinese
{
//    拷贝
    NSMutableString *pinyin = [chinese mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)pinyin, 0, kCFStringTransformMandarinLatin, NO);

    NSLog(@"%@", pinyin);
    return [pinyin uppercaseString];
}





@end
