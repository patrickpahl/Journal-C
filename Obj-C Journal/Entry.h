//
//  Entry.h
//  Obj-C Journal
//
//  Created by Patrick Pahl on 5/31/16.
//  Copyright © 2016 Patrick Pahl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *bodyText;
@property (nonatomic, strong) NSDate *timeStamp;

@property (strong, nonatomic) NSDictionary *dictionaryCopy;

- (instancetype) initWithTitle: (NSString *)title andBodyText: (NSString *)bodyText andTimeStamp: (NSDate *)timeStamp;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end



