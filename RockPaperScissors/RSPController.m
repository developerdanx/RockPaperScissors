//
//  RSPController.m
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import "RPSController.h"
#import "RPSTurn.h"
#import "RPSGame.h"

@implementation RPSController

-(void)setGame:(RPSGame *)game {
    _game = game;
}

-(void)throwDown:(Move) playersMove {
    
    RPSTurn *playersTurn = [[RPSTurn alloc] initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn secondTurn:computersTurn];
    
}

-(NSString*)messageForGame:(RPSGame*)game {
    // Handle the tie
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie!";
    } else {

        // Here we build up the results message "Rock crushes Scissors. You Win!" etc.
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser]  description];
        NSString *resultsString = [self resultString: game];

        NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultsString];

        return wholeString;
     }
}

-(NSString*)resultString:(RPSGame *)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You win!" : @"You Lose!";
}

@end
