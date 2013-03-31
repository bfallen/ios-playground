//
//  Card.m
//  
//
//  Created by Ben Allen on 3/30/13.
//
//

#import "Card.h"

@interface Card()

@end

@implementation Card

//- (int)match:(Card *)card
//{
//    int score=0;
//    
//    if([card.contents isEqualToString:self.contents]) {
//        score=1;
//    }
//    
//    return score;
//}

- (int)match:(NSArray *)otherCards
{
    int score=0;
    
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents]) {
            score=1;
        }
        
    }
    
    return score;
}


@end
