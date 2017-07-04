
//
//  FAKMaterial3Icons.m
//  FontAwesomeKit
//
//  Created by tianwei on 2017/7/4.
//  Copyright © 2017年 Rémy DA COSTA FARO. All rights reserved.
//

#import "FAKMaterial3Icons.h"
#import <UIKit/UIKit.h>

@implementation FAKMaterial3Icons

+ (UIFont *)iconFontWithSize:(CGFloat)size
{
#ifndef DISABLE_MATERIAL_AUTO_REGISTRATION
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self registerIconFontWithURL:[[NSBundle bundleForClass:[FAKMaterialIcons class]] URLForResource:@"MaterialIcons-Regular" withExtension:@"ttf"]];
    });
#endif
    
    
    UIFont *font = [UIFont fontWithName:@"Material Icons" size:size];
    NSAssert(font, @"UIFont object should not be nil, check if the font file is added to the application bundle and you're using the correct font name.");
    return font;
}

+(instancetype)accountBalanceWalletIconWithSize:(CGFloat)size{ return [self iconWithCode:@"\ue850" size:size]; }
@end
