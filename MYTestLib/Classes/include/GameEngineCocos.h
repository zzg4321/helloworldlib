//
//  GameEngineCocos.h
//  MYTestLib
//
//  Created by zhigang zou on 2021/1/8.
//

#ifndef GameEngineCocos_h
#define GameEngineCocos_h

#import <UIKit/UIKit.h>
#import "GameEngineDelegate.h"

@interface GameEngineCocos : NSObject <GameEngineDelegate>
{
}
+ (instancetype)getInstance;
- (void)appAction:(NSString *)params;

- (void)setGameViewSize:(int)width height:(int)height;
- (UIView*)getGameView;


- (void)setMultitouch:(bool)value;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillResignActive:(UIApplication *)application;
- (void)applicationDidEnterBackground:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (void)applicationWillTerminate:(UIApplication *)application;



@end

#endif /* GameEngineCocos_h */
