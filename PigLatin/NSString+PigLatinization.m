//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Katherine Peterson on 2015-08-28.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "NSString+PigLatinization.h"


@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    
    NSArray *words = [self componentsSeparatedByString: @" "];
    for (NSString *word in words) {
        NSMutableArray *letters = [self getArrayOfLettersInWord:word];
        [self moveFirstConsonantToEndIn:letters];
//        NSString
//        
//        loop until substring = aeiouy
//        NSString *firstLetter = [[sectionTitle substringToIndex:1]
    }
    
    return self;
}

-(NSMutableArray *)getArrayOfLettersInWord:(NSString *)word {
    NSMutableArray *arrayOfLetters = [NSMutableArray new];
    
    for (int i = 0; i < word.length; i++) {
        NSString *letter = [NSString stringWithFormat:@"%c",[word characterAtIndex:i]];
        [arrayOfLetters addObject:letter];
    }
    return arrayOfLetters;
}

-(NSMutableArray *)moveFirstConsonantToEndIn:(NSMutableArray *)letters {
    NSMutableArray *firstConsonant = [NSMutableArray new];
    
    NSSet *vowels = [[NSSet alloc]initWithObjects:@"a",@"e",@"i",@"o",@"u",@"y", nil];
    int i = 0;
    while (![vowels containsObject:letters[i]]) {
        NSString *letter = letters[i];
        [firstConsonant addObject:letter];
        [letters removeObject:letter];
        
    }
    [letters addObjectsFromArray:firstConsonant];
    return letters;
}

@end
