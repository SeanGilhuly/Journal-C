//
//  Entry.m
//  Journal-C
//
//  Created by Sean Gilhuly on 5/31/16.
//  Copyright © 2016 Sean Gilhuly. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(instancetype)initWithName: (NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        self.title = title;
        self.bodyText = bodyText;
        self.timeStamp = [NSDate date];
    }
    return self;
}
@end
