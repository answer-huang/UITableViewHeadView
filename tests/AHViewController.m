//
//  AHViewController.m
//  tests
//
//  Created by answer on 14-9-4.
//  Copyright (c) 2014年 eku. All rights reserved.
//

#import "AHViewController.h"

@interface AHViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation AHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.testTableView.delegate = self;
    self.testTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 32;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *footView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 8)];
    footView.backgroundColor =  [UIColor clearColor];
    return footView;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
//    cell.clipsToBounds = YES;
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, -22, 320, 8)];
    view.backgroundColor =  [UIColor yellowColor];
    
    cell.backgroundColor = [UIColor blackColor];
    [cell.contentView addSubview:view];
    return cell;
}
@end
