//
//  RPSController.m
//  RockPaperScissors
//
//  Created by Rodrigo López-Romero Guijarro on 28/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"

@implementation RPSController

-(void)throwDown:(Move) move {
    // Here the RPSTurn class generates the opponent's move
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:move];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
    
    // The RPSGame class stores the results of a game
    self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn
                                        secondTurn:computersTurn];
}

-(NSString*)resultString:(RPSGame*)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
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

@end
