#import <Foundation/Foundation.h>

@interface Card : NSObject

// use nonatomic for thread safe
// strong says "keep this in the heap until strong pointer exist". strong is default.
@property (strong, nonatomic) NSString *contents;

// primitive types don't need be strong/weak
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match: (NSArray *)otherCards;
@end
