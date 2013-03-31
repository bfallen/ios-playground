//
//  PlayingCard.h
//  CardGame
//
//  Created by Ben Allen on 3/31/13.
//  Copyright (c) 2013 Ben Allen. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
