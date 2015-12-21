#import "MainScene.h"

@implementation MainScene



-(void) gameButtonPressed
{
    NSLog(@"Get me outa here!");
    CCScene* scene = [CCBReader loadAsScene:@"GameScene"];
    CCTransition* transition = [CCTransition transitionFadeWithDuration:1.5];
    [[CCDirector sharedDirector] presentScene:scene withTransition:transition];
}


@end
