//
//  HTMainViewController.m
//  ShareDataWritePart
//
//  Created by Jason on 2014/12/22.
//  Copyright (c) 2014年 Zoaks. All rights reserved.
//

#import "HTMainViewController.h"

@interface HTMainViewController ()

@end

@implementation HTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 共享方法一：檔案共享～寫入
    NSFileManager *fm = [NSFileManager defaultManager];
    NSURL *baseURL = [fm containerURLForSecurityApplicationGroupIdentifier:@"group.happy.share"];
    NSURL *url = [[NSURL alloc] initWithString:@"HappyShare.txt" relativeToURL:baseURL];
    NSString *string1 = @"快樂地過每一天～";
    [string1 writeToURL:url atomically:YES encoding:NSUTF8StringEncoding error:nil];
    
    // 共享方法二：系統預設的plist檔資料共享～寫入
    NSUserDefaults *ud = [[NSUserDefaults alloc] initWithSuiteName:@"group.happy.share"];
    NSString *string2 = @"每一天都要成長快樂～";
    [ud setObject:string2 forKey:@"HappyShare"];
    [ud synchronize];
}

@end
