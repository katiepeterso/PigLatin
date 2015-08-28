//
//  main.m
//  PigLatin
//
//  Created by Katherine Peterson on 2015-08-28.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *string = @"I'm far too sophisticated for Pig Latin";
        [string stringByPigLatinization];
    }
    return 0;
}
