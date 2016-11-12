//
//  TableViewCell.m
//  xinghuazhidian
//
//  Created by Apple on 16/11/11.
//  Copyright © 2016年 lkb-求工作qq:1218773641. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(TableViewCell*)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:reuseIdentifier{
    
    
    
        UITableViewCell*cell=[[UITableViewCell alloc]init];
        cell=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    UIButton*lb=[[UIButton alloc]initWithFrame:CGRectMake(5, 5, 40, 35)];
    [lb setTitle:@"我" forState:UIControlStateNormal];
    [lb setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [lb setBackgroundImage:[UIImage imageNamed:@"font_bg"] forState:UIControlStateNormal];
    [cell addSubview:lb];
    UILabel*l1=[[UILabel alloc]initWithFrame:CGRectMake(50, 5, 30, 15)];
    l1.text=@"er";
    [cell addSubview:l1];
    UILabel*l2=[[UILabel alloc]initWithFrame:CGRectMake(50, 20, 180, 20)];
    l2.text=@" er [二] +0共两画,五笔;FFG";
    l1.font=[UIFont fontWithName:@"Kai" size:18];
    [cell addSubview:l2];
        return cell;






}


@end
