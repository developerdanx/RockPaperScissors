//
//  RSPGame.h
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

NS_ASSUME_NONNULL_BEGIN

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;

-(instancetype)initWithFirstTurn:(RPSTurn *)playerTurn secondTurn: (RPSTurn *)computerTurn;

-(NSString *)winner;
-(NSString *)loser;

@end

NS_ASSUME_NONNULL_END
