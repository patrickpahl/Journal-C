//
//  EntryController.m
//  Obj-C Journal
//
//  Created by Patrick Pahl on 5/31/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

#import "EntryController.h"

static NSString * const EntriesKey = @"entries";

@implementation EntryController

    + (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}

-(void)addEntry:(Entry *)entry{
    [self.entries addObject:entry];
    [self saveToPersistentStorage];
}


-(void)deleteEntry:(Entry *)entry{
    [self.entries removeObject:entry];
    [self saveToPersistentStorage];
}



- (void)saveToPersistentStorage {
    
    NSMutableArray *entryDictionaries = [NSMutableArray new];
    
    for (Entry *entry in self.entries) {
        
        [entryDictionaries addObject:entry.dictionaryCopy];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:entryDictionaries forKey:EntriesKey];
}

- (void)loadFromPersistentStorage {
    
    NSMutableArray *entries = [NSMutableArray new];
    
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:EntriesKey];
    
    for (NSDictionary *dictionary in entryDictionaries) {
        
        Entry *entry = [[Entry alloc] initWithDictionary:dictionary];
        [entries addObject:entry];
    }
    
    self.entries = entries;
}

@end


////must type - first before autocompleting a func
//// methods use brackets, properties use dot(.) notation
////add to array in obj-c: addObject