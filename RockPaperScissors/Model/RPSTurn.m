//
//  RPSTurn.m
//  RockPaperScissors
//
//  Created by Rodrigo López-Romero Guijarro on 28/09/2017.
//  Copyright © 2017 Rodrigo López-Romero Guijarro. All rights reserved.
//

#import "RPSTurn.h"

// RPSTurn.m

@implementation RPSTurn

-(instancetype)initWithMove:(Move) move {
    
    self = [super init];
    
    if (self){
        _move = move;
    }
    
    return self;
}

@end

