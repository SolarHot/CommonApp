//
//  ComNetworking.h
//  CommonApp
//
//  Created by lipeng on 16/3/10.
//  Copyright © 2016年 common. All rights reserved.
//

#import "ComRequest.h"

@interface ComNetworking : NSObject

@property(nonatomic, copy) NSString *urlBaseString;
@property(nonatomic, copy) NSString *urlPathString;

- (instancetype)initWithBaseUrl:(NSString *)baseString path:(NSString *)pathString;
- (void)addDataParam:(NSObject *)param forKey:(NSString *)keyString;
- (void)sendRequestOnSuccess:(SuccessBlock)successBlock onFailed:(FailedBlock)failedBlock;
- (void)cancel;

@end
