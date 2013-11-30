//
//  TMainViewController.m
//  TiPadMan
//
//  Created by Tomohiko Yamada on 2013/11/30.
//  Copyright (c) 2013年 yamatomo. All rights reserved.
//

#import "TMainViewController.h"


@implementation TMainViewController {
  UITableView *_tableView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
    self.title = @"iPadの使い方";
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
   //navigationbar　カラー
  self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.97 green:1.00 blue:0.18 alpha:0.8];
  
   UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
  _tableView = tableView;
  _tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  _tableView.dataSource = self;
  _tableView.delegate = self;
  [self.view addSubview:_tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
  return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  NSString *cellIdentifier = @"Cell";
  UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellIdentifier];
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
  }
 switch (indexPath.row) {
  case 0:
    cell.textLabel.text = @"FaceTimeの使い方";
    break;
  case 1:
    cell.textLabel.text = @"写真の共有方法";
    break;
  case 2:
     cell.textLabel.text = @"動画の共有方法";
    break;
  default:
    break;
 }
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  NSURL *url;
  switch (indexPath.row) {
    case 0:
      url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=S1xjq-QUOiM"];
      [[UIApplication sharedApplication] openURL:url];
      break;
    case 1:
      url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=d27gTrPPAyk"];
      [[UIApplication sharedApplication] openURL:url];
      break;
    case 2:
      url = [NSURL URLWithString:@"http://www.youtube.com/watch?v=xeX8Doirrn8"];
      [[UIApplication sharedApplication] openURL:url];
      break;
    default:
      break;
  }
  
  
  
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
