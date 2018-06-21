//
//  WSManager.h
//  SampleWSManager
//
//  Created by Akruti Panchal on 21/06/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WSManager : NSObject
+(instancetype)sharedInstance;
- (void)callPostService:(NSString*)urlString parameter:(NSDictionary*)param method:(NSString*)methodName completionBlock:(void (^)(BOOL succeeded, id  responseData ,NSString* errorMsg))completionBlock;
- (void)callGetService:(NSString*)urlString method:(NSString*)methodName completionBlock:(void (^)(BOOL succeeded, id  responseData ,NSString* errorMsg))completionBlock;

@end
