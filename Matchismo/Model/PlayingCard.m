#import "PlayingCard.h"

@implementation PlayingCard

@synthesize suit = _suit; // Is mandatory to "get" AND "set" custom implementations

- (int)match:(NSArray *)otherCards {
    int score = 0;
    
    if ([otherCards count] == 1) {
        PlayingCard *other = [otherCards firstObject];
        if ([self.suit isEqualToString:other.suit]) {
            score = 1;
        } else if (self.rank == other.rank) {
            score = 4;
        }
    }
    
    return score;
}

- (NSString *) contents {
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
}

+ (NSArray *) validSuits {
    return @[@"♥", @"♦", @"♠", @"♣"]; // Use @[] to initiate arrays. Insert special characters by edit/emoji & symbols menu.
}

- (void) setSuit: (NSString *)suit {
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit {
    return _suit ? _suit : @"?";
}

+ (NSArray *) rankStrings {
    return @[@"?", @"A" , @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger) maxRank {
    return [[self rankStrings] count] - 1;
}

- (void) setRank:(NSUInteger)rank {
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
