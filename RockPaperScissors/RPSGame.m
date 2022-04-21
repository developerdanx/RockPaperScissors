//
//  RSPGame.m
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import "RPSGame.h"
#import "RPSTurn.h"

@implementation RPSGame

-(instancetype)initWithFirstTurn:(RPSTurn *)playerTurn secondTurn:(RPSTurn *)computerTurn {
    self = [super init];
    
    if(self) {
        _firstTurn = playerTurn;
        _secondTurn = computerTurn;
    }
    
    return self;
}

-(RPSTurn *)winner {
    return [self.firstTurn defeats:self.secondTurn] ? self.firstTurn : self.secondTurn;
}

-(RPSTurn *)loser {
    return [self.firstTurn defeats:self.secondTurn] ?
    self.secondTurn : self.firstTurn;
}

-(NSString *)resultsString:(RPSGame *)game {
    return [game.firstTurn defeats:game.secondTurn] ?
    @"You win!" : @"You lose.";
}

@end
