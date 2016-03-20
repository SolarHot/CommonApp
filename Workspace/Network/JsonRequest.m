//
//  JsonRequest.m
//  CommonApp
//
//  Created by lipeng on 16/3/20.
//  Copyright © 2016年 common. All rights reserved.
//

#import "JsonRequest.h"
#import "ComModel.h"

@implementation JsonRequest

- (instancetype)init {
    if (self = [super init]) {
        self.jsonReqDelegate = self;
        self.responseDelegate = self;
    }
    return self;
}

- (id)buildResponse:(id)responseData {
    if (responseData){
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:responseData options:NSJSONReadingMutableContainers | NSJSONReadingMutableLeaves error:nil];
        DLog(@"%@", dic);
        
        if ([self.jsonReqDelegate respondsToSelector:@selector(modelClass)]) {
            return [[self.jsonReqDelegate modelClass] yy_modelWithDictionary:dic];
        }
        else {
            return dic;
        }
    }
    return nil;
}

- (Class)modelClass {
    return [ComModel class];
}

@end
