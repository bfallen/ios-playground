//
//  PlayingCard.m
//  CardGame
//
//  Created by Ben Allen on 3/31/13.
//  Copyright (c) 2013 Ben Allen. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit; // because we provided both getter and setter

- (NSString *)contents {
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
//    return [NSString stringWithFormat:@"%d%@", self.rank, self.suit];
}

+ (NSArray *)validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}


- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit=suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit: @"?";
}

+ (NSArray *) rankStrings
{
    return @[@"?", @"A", @"2", @"3",@"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank {return [self rankStrings].count-1; }

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank=rank;
    }
}

@end
