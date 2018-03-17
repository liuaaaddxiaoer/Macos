//
//  AP_11_Screen_SaverView.m
//  AP 11 Screen Saver
//
//  Created by 刘小二 on 2018/2/15.
//  Copyright © 2018年 刘小二. All rights reserved.
//

#import "AP_11_Screen_SaverView.h"

@implementation AP_11_Screen_SaverView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
        NSUserDefaults
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
    [[NSColor redColor] setFill];
    NSRectFill(rect);
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return true;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
