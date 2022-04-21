//
//  RSPController.h
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"
#import "RPSGame.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(void)throwDown:(Move)playersMove;
-(NSString *)resultString:(RPSGame *) game;
-(NSString*)messageForGame:(RPSGame*) game;

@end

NS_ASSUME_NONNULL_END
