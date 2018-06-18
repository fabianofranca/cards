#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation ViewController

- (void) setFlipCount:(int)flipCount {
    _flipCount = flipCount;
    
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
    
    NSLog(@"flipCount = %d", self.flipCount); // Logar mensagem no console
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    
    self.flipCount++;
}

@end
