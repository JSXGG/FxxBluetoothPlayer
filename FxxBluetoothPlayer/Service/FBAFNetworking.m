//
//  KWNetworking.m
//  KinWind
//
//  Created by Baird-weng on 16/6/7.
//  Copyright © 2016年 Baird-weng. All rights reserved.
//

#import "FBAFNetworking.h"

//请求成功回调block
typedef void (^requestSuccessBlock)(NSDictionary *dic);
//请求失败回调block
typedef void (^requestFailureBlock)(NSError *error);
@implementation FBAFNetworking
+ (instancetype)sharedManager{
    static FBAFNetworking *manager = nil;
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        manager = [self manager];
        manager.requestSerializer.timeoutInterval = 60;
        manager.requestSerializer.cachePolicy = NSURLRequestReloadIgnoringLocalCacheData;
        [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
        manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/plain", @"text/javascript", @"text/json", @"text/html", nil];
        manager.securityPolicy.allowInvalidCertificates = YES;
        manager.securityPolicy.validatesDomainName = NO;
    });
    return manager;
}
- (void)requestWithMethod:(HTTPMethod)method
                 WithPath:(NSString *)path
               WithParams:(id)params
         WithSuccessBlock:(requestSuccessBlock)success
          WithFailurBlock:(requestFailureBlock)failure
{
    switch (method) {
        case GET:{
            [self GET:path parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                success(responseObject);
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                failure(error);
            }];
            break;
        }
        case POST:{
            [self POST:path parameters:params progress:nil success:^(NSURLSessionDataTask *task, id responseObject){
                success(responseObject);
            } failure:^(NSURLSessionDataTask *task, NSError *error) {
                failure(error);
            }];
            break;
        }
        default:
            break;
    }
}
-(void)requestWithUpload:(NSString *)path
              WithParams:(id)params WithImage:(NSData *)imageData
 WithUploadProgressBlock:(UploadProgressBlock)Progress
        WithSuccessBlock:(requestSuccessBlock)success
         WithFailurBlock:(requestFailureBlock)failure{
    AFHTTPRequestSerializer *serializer = [AFHTTPRequestSerializer serializer];
    serializer.timeoutInterval = 60*3;
    [self POST:path parameters:params constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFileData:imageData name:@"image" fileName:@"image.jpg" mimeType:@"image/jpeg"];
    } progress:^(NSProgress * _Nonnull uploadProgress){
        Progress(uploadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        failure(error);
        
    }];
}
@end
