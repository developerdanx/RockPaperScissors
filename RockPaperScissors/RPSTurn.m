//
//  RSPTurn.m
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove:(Move)move {
    self = [super init];
    
    if (self) {
        _move = move;
    }
    
    return self;
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        _move = [self generateMove];
    }
    
    return self;
}

-(Move)generateMove {
    
    NSUInteger randomNumber = arc4random_uniform(3);
    
    switch(randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
            break;
        case 2:
            return Scissors;
            break;
        default:
            return Invalid;
            break;
    }
}

-(NSString *)description {
    
    switch(self.move) {
        case Rock:
            return @"Rock";
        case Paper:
            return @"Paper";
        case Scissors:
            return @"Scissors";
        case Invalid:
            return @"Invalid";
    }
}

-(BOOL)defeats:(RPSTurn *)opponent {
    
    if ((self.move == Paper && opponent.move == Rock) ||
        (self.move == Scissors && opponent.move == Paper) ||
        (self.move == Rock && opponent.move == Scissors))
    {
        return true;
    } else {
        return false;
    }
}



@end
