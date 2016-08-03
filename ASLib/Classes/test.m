//
//  test.m
//  Pods
//
//  Created by cuijianpeng on 16/8/3.
//
//

#import "test.h"
#import <CocoaAsyncSocket/GCDAsyncSocket.h>
@implementation test
+(void)djconnect{
    NSLog(@"djtest--1");
    GCDAsyncSocket *tem = [GCDAsyncSocket new];
    NSLog(@"djtest--2");
    NSError *err;
    NSLog(@"djtest--3");
    [tem connectToHost:@"www.baidu.com" onPort:80 error:&err];
    NSLog(@"djtest--4");
}
@end
