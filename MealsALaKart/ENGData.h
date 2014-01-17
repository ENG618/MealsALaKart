//
//  ENGData.h
//  MealsALaKart
//
//  Created by Eric Garcia on 1/16/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kDefaultText @"New Note"
#define kAllNotes @"notes"
#define kDetailView @"showDetail"

@interface ENGData : NSObject

+(NSMutableDictionary *)getAllNotes;
+(void)setCurretnKey:(NSString *)key;
+(NSString *)getCurrentKey;
+(void)setNoteForCurrentKey:(NSString *)note;
+(void)setNote:(NSString *)note forkey:(NSString *)key;
+(void)removeNoteForKey:(NSString*)key;
+(void)saveNotes;

@end
