//
//  Userinfo.h
//  login
//
//  Created by 孙凯峰 on 2017/4/24.
//  Copyright © 2017年 wubianxiaoxian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Userinfo : NSObject
+(Userinfo*)sharedDetail;
@property(nonatomic,strong) NSString * Uname;
@property(nonatomic,strong) NSString * Uage;
- (void)setJson:(NSDictionary *)json;
-(void)LoadUserJson;
@end
