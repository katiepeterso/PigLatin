//
//  NSString+PigLatinization.m
//  PigLatin
//
//  Created by Katherine Peterson on 2015-08-28.
//  Copyright (c) 2015 KatieExpatriated. All rights reserved.
//

#import "NSString+PigLatinization.h"

@interface NSString()

@property (nonatomic) NSMutableArray *arrayOfLetters;
@property (nonatomic) NSString *word;
@property (nonatomic) NSString *pigLatinWord;

-(NSMutableArray *)getArrayOfLettersInWord:(NSString *)word;



@end


@implementation NSString (PigLatinization)

-(NSString *)stringByPigLatinization {
    
    NSArray *words = [self componentsSeparatedByString: @" "];
    for (NSString *word in words) {
        NSArray *letters = [self getArrayOfLettersInWord:word];
        NSLog(@"%@", letters);
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

@end
