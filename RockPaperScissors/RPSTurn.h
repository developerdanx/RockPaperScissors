//
//  RSPTurn.h
//  RockPaperScissors
//
//  Created by Dan Petre on 14/4/22.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid,
};

NS_ASSUME_NONNULL_BEGIN

@interface RPSTurn : NSObject

@property (nonatomic) Move move;

-(instancetype)initWithMove:(Move)move;
-(NSString *)description;
-(BOOL)defeats:(RPSTurn *)opponent;

@end

NS_ASSUME_NONNULL_END
