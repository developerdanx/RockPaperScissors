//
//  main.m
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialize an instance of RPSController
        RPSController *gameController = [[RPSController alloc] init];
        
        // Send the message throwDown: to the game controller you just created
        [gameController throwDown: Rock];
        
        // Create an NSString called results message
        // Call the method, messageForGame: using the gameController you just created
        // Pass gameController.game as a parameter to messageForGame:
        // Assign the return value of messageForGame: to the resultsMessage string
        
        NSString *resultsMessage = [gameController messageForGame:gameController.game];
        

        NSLog(@"%@", resultsMessage);
    }

    return 0;
}
