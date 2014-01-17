//
//  ENGData.m
//  MealsALaKart
//
//  Created by Eric Garcia on 1/16/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "ENGData.h"

@implementation ENGData

static NSMutableDictionary *allNotes;
static NSString *currentKey;

+(NSMutableDictionary *)getAllNotes{
    if (allNotes == nil) {
        allNotes = [[NSMutableDictionary alloc] initWithDictionary:[[NSUserDefaults standardUserDefaults] dictionaryForKey:kAllNotes]];
    }
    return allNotes;
}

+(void)setCurretnKey:(NSString *)key{
    currentKey = key;
}

+(NSString *)getCurrentKey{
    return currentKey;
}

+(void)setNoteForCurrentKey:(NSString*)note{
    [self setNote:note forkey:currentKey];
}

+(void)setNote:(NSString *)note forkey:(NSString *)key{
    [allNotes setObject:note forKey:key];
}

+(void)removeNoteForKey:(NSString *)key{
    [allNotes removeObjectForKey:key];
}

+(void)saveNotes{
    [[NSUserDefaults standardUserDefaults] setObject:allNotes forKey:kAllNotes];
}

@end
