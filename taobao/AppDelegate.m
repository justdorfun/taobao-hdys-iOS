//
//  AppDelegate.m
//  taobao
//
//  Created by zw on 13-5-5.
//  Copyright (c) 2013年 zw. All rights reserved.
//

#import "AppDelegate.h"

#import "MainViewController.h"
#import "MobClick.h"
#import "Global.h"
#import "UserInfoManager.h"
#import "UMSocial.h"
#import "WXApi.h"


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [UserInfoManager sharedManager];
    [MobClick startWithAppkey:kUMENG_KEY];
    [UMSocialData setAppKey:kUMENG_KEY];
    [UMSocialConfig setSupportSinaSSO:NO];
    [WXApi registerApp:@"wx8bb0a94a729a0900"];
    
    //TAOBAO
//    [TopIOSClient registerIOSClient:@"appkey" appSecret:@"appsecretcode" callbackUrl:@"appcallback://" needAutoRefreshToken:TRUE];
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    MainViewController *vc = [[MainViewController alloc] initWithNibName:nil bundle:nil];
    self.nav = [[UINavigationController alloc] initWithRootViewController:vc];
    self.nav.navigationBarHidden = YES;
    self.window.rootViewController = self.nav;
    [self.window makeKeyAndVisible];
    return YES;
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL*)url
{    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
//    [UMSocialSnsService  applicationDidBecomeActive];
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

//
//- (BOOL)application:(UIApplication *)application
//            openURL:(NSURL *)url
//  sourceApplication:(NSString *)sourceApplication
//         annotation:(id)annotation
//{
//    return  [UMSocialSnsService handleOpenURL:url wxApiDelegate:nil];
//}

@end
