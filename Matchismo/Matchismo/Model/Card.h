//
//  Card.h
//  
//
//  Created by Ben Allen on 3/30/13.
//
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isFaceUp) BOOL faceUp;
@property (nonatomic, getter=isUnplayable) BOOL unplayable;

- (int)nmatch:(Card *)card;

- (int)match:(NSArray *)otherCards;

@end
