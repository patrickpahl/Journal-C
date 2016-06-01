//
//  EntryController.h
//  Obj-C Journal
//
//  Created by Patrick Pahl on 5/31/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (nonatomic, strong) NSMutableArray *entries;

+(EntryController *)sharedInstance;

-(void)createEntryWithName: (NSString *)name;
-(void)deleteEntry: (Entry *)entry;
-(void)updateEntry: (Entry *)entry;


@end






////need array of playlists
////singleton is a func in obj-c
////CRUD
////void refers to what it is going to return- with these funcs, void means it returns nothing
//// #import:  "" = file, <> = framework