//
//  Userinfo.m
//  login
//
//  Created by 孙凯峰 on 2017/4/24.
//  Copyright © 2017年 wubianxiaoxian. All rights reserved.
//

#import "Userinfo.h"

@implementation Userinfo
static Userinfo *sharedDetail = nil;
- (void)setJson:(NSDictionary *)json{
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:json forKey:@"Userjson"];
    [defaults synchronize];
    self.Uname  = [json objectForKey:@"username"];
    NSLog(@"加载个人数据成功 %@",self.Uname);
}
-(void)LoadUserJson{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSDictionary *loadJsondic=[defaults objectForKey:@"Userjson"];
    //加载获得的数据
    [self setJson:loadJsondic];
    
}
+(Userinfo
  *)sharedDetail{
    static Userinfo *singleCommone = nil;
    static dispatch_once_t once;
    dispatch_once(&once,
                  ^{  singleCommone
                      = [Userinfo new];
                      
                  });
    return singleCommone;
}

@end
