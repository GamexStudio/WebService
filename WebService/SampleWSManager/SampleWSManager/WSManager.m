//
//  WSManager.m
//  SampleWSManager
//
//  Created by Akruti Panchal on 21/06/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

#import "WSManager.h"

@implementation WSManager

+ (instancetype)sharedInstance {
    static WSManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[WSManager alloc] init];
    });
    
    return sharedInstance;
}

- (void)callGetService:(NSString*)urlString method:(NSString*)methodName completionBlock:(void (^)(BOOL succeeded, id  responseData ,NSString* errorMsg))completionBlock{
    // Create the URLSession on the default configuration
    NSURLSessionConfiguration *defaultSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:defaultSessionConfiguration];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:url];
    [urlRequest addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [urlRequest addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [urlRequest setHTTPMethod:methodName];
    
    NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            // Failure block called
            completionBlock(NO,nil,error.localizedDescription);
        }else {
            // Failure block called
            //Success block Called
            id dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            completionBlock(YES ,dict,nil);
        }
    }];
    
    [dataTask resume];
}

- (void)callPostService:(NSString*)urlString parameter:(NSDictionary*)param method:(NSString*)methodName completionBlock:(void (^)(BOOL succeeded, id  responseData ,NSString* errorMsg))completionBlock {
    NSError *error;
    NSURLSessionConfiguration *defaultSessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:defaultSessionConfiguration];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] initWithURL:url];
    [urlRequest addValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [urlRequest addValue:@"application/json" forHTTPHeaderField:@"Accept"];
    [urlRequest setHTTPMethod:methodName];
    NSData *postData = [NSJSONSerialization dataWithJSONObject:param options:0 error:&error];
    [urlRequest setHTTPBody:postData];
    NSURLSessionDataTask *dataTask = [defaultSession dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error) {
            // Failure block called
            completionBlock(NO,nil,error.localizedDescription);
        }else {
            // Failure block called
            //Success block Called
            id dict = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
            completionBlock(YES ,dict,nil);
        }
    }];
    
    [dataTask resume];
}
@end
