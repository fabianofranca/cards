#import <Foundation/Foundation.h>

@interface Card : NSObject

// nonatomic prepara a propriedade para ser utilizada em multithread
@property (strong, nonatomic) NSString *contents;

// Tipos primitivos não precisam de strong
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match: (NSArray *)otherCards;
@end
