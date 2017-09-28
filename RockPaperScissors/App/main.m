//
//  main.m
//  RockPaperScissors
//
//  Created by Rodrigo López-Romero Guijarro on 28/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Initialization
        RPSController *gameController = [[RPSController alloc] init];
        
        // USER OPTION CHOSEN HERE !!!!!!!!!!!!
        [gameController throwDown:Rock];
        
        // Result
        NSString *resultMessage = [gameController messageForGame:gameController.game];
        NSLog(@"%@", resultMessage);
    }
    
    return 0;
}
