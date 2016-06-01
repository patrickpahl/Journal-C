//
//  Entry.m
//  Obj-C Journal
//
//  Created by Patrick Pahl on 5/31/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

#import "Entry.h"

static NSString * const TitleKey = @"title";
static NSString * const BodyTextKey = @"bodyText";
static NSString * const TimeStampKey = @"timeStamp";


@implementation Entry

-(instancetype)initWithTitle: (NSString *) title andbodyText:(NSString *)bodyText andTimeStamp: (NSDate*)timeStamp{
    
    self = [super init];
    if (self) {
        
        self.title = title;
        self.bodyText = bodyText;
        self.timeStamp = timeStamp;
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        _title = dictionary[TitleKey];
        _bodyText = dictionary[BodyTextKey];
        _timeStamp = dictionary[TimeStampKey];
    }
    
    return self;
}

- (NSDictionary *)dictionaryCopy {
    
    return @{
             TitleKey: self.title,
             BodyTextKey: self.bodyText,
             TimeStampKey: self.timeStamp
             };
}


@end


