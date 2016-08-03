//
//  ASViewController.m
//  ASLib
//
//  Created by cuijianpeng on 08/03/2016.
//  Copyright (c) 2016 cuijianpeng. All rights reserved.
//

#import "ASViewController.h"
#import <CocoaAsyncSocket/GCDAsyncSocket.h>
@interface ASViewController ()

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"djtest--1");
    GCDAsyncSocket *tem = [GCDAsyncSocket new];
    NSLog(@"djtest--2");
    NSError *err;
    NSLog(@"djtest--3");
    [tem connectToHost:@"www.baidu.com" onPort:80 error:&err];
    NSLog(@"djtest--4");
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
