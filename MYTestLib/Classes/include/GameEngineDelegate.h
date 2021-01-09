//
//  GameEngineDelegate.h
//  MYTestLib
//
//  Created by zhigang zou on 2021/1/8.
//

#ifndef GameEngineDelegate_h
#define GameEngineDelegate_h
#import <Foundation/Foundation.h>


@protocol GameEngineDelegate <NSObject>

@optional
- (void)gameAction:(NSString *)params;
@end

#endif /* GameEngineDelegate_h */
