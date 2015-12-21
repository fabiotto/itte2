//
//  GameScene.m
//  MIOGIOCO18
//
//  Created by Fabio Tavanti on 12/12/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

{
    __weak CCNode* _levelNode;
    __weak CCPhysicsNode* _physicsNode;
    __weak CCNode* _playerNode;
    __weak CCNode* _backgroundNode;
}
-(void) didLoadFromCCB
{
    // enable receiving input events
    self.userInteractionEnabled = YES;
    // load the current level
    [self loadLevelNamed:nil];
}
-(void) loadLevelNamed:(NSString*)levelCCB
{
    // get the current level's player in the scene by searching for it recursively
    _playerNode = [self getChildByName:@"player" recursively:YES];
    NSAssert1(_playerNode, @"player node not found in level: %@", levelCCB);
}

//-(void) touchBegan:(CCTouch *)touch withEvent:(UIEvent *)event
-(void) touchBegan:(CCTouch *)touch withEvent:(UIEvent *)event


{
    NSLog(@"okaay premuto");
    _playerNode.position = [touch locationInNode:self];
    
    
}

@end
