//
//  GCDAsyncSocketManager.h
//  Pods
//
//  Created by cuijianpeng on 16/8/3.
//
//

#import <Foundation/Foundation.h>
#import <CocoaAsyncSocket/GCDAsyncSocket.h>
@interface GCDAsyncSocketManager : NSObject
@property (nonatomic, assign) NSInteger connectStatus;
@property (nonatomic, strong) GCDAsyncSocket *socket;
+ (nullable GCDAsyncSocketManager *)sharedInstance;
- (void)connectSocketWithDelegate:(nonnull id)delegate;
@end
