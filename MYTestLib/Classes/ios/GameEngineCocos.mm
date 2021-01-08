#import "GameEngineCocos.h"
#import "cocos2d.h"
#import "AppDelegate.h"
#import "platform/ios/CCEAGLView-ios.h"

using namespace cocos2d;

@implementation GameEngineCocos

Application* app = nullptr;


static GameEngineCocos *mInstace = nil;

+ (instancetype)getInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        mInstace = [[super allocWithZone:NULL] init];
        [mInstace initSDKWrapper];
    });
    return mInstace;
}

- (BOOL)startGame: {
    // Add the view controller's view to the window and display.
    
    // cocos2d application instance
    app = new AppDelegate(400,400);
    app->setMultitouch(false);
    
    
    //run the cocos2d-x game scene
    app->start();
    
    return YES;
}

- (void)appAction:(NSString *)params
{
    
}
- (void)setGameViewFrame:(CGRect)frame
{
    
}
- (UIView*)getGameView()
{
    return (__bridge CCEAGLView *)cocos2d::Application::getInstance()->getView();
}
- (void)setMultitouch:(bool)value{
    app->setMultitouch(value);
}
- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
    app->onPause();
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
    app->onResume();
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    delete app;
    app = nil;
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}

@end
