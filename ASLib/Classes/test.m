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
    GCDAsyncSocket *tem = [GCDAsyncSocket new];
    NSError *err;
    [tem connectToHost:@"www.baidu.com" onPort:80 error:&err];
}
@end
