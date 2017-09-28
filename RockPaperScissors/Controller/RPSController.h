//
//  RPSController.h
//  RockPaperScissors
//
//  Created by Rodrigo López-Romero Guijarro on 28/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"
@interface RPSController : NSObject

@property (nonatomic) RPSGame *game;

-(NSString*)messageForGame:(RPSGame*)game;

@end
