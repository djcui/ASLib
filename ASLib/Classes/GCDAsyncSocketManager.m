//
//  GCDAsyncSocketManager.m
//  Pods
//
//  Created by cuijianpeng on 16/8/3.
//
//

#import "GCDAsyncSocketManager.h"
#import <CocoaAsyncSocket/GCDAsyncSocket.h>
@implementation GCDAsyncSocketManager
+ (GCDAsyncSocketManager *)sharedInstance {
    static GCDAsyncSocketManager *instance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

#pragma mark - socket actions
- (void)connectSocketWithDelegate:(id)delegate {
    if (self.connectStatus != -1) {
        NSLog(@"Socket Connect: YES");
        return;
    }
    
    self.connectStatus = 0;
    
    self.socket =
    [[GCDAsyncSocket alloc] initWithDelegate:delegate delegateQueue:dispatch_get_main_queue()];
    
    NSError *error = nil;
    if (![self.socket connectToHost:@"www.baidu.com" onPort:80 withTimeout:3600 error:&error]) {
        self.connectStatus = -1;
        NSLog(@"connect error: --- %@", error);
    }
}
@end
