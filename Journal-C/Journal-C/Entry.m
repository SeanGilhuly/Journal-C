//
//  Entry.m
//  Journal-C
//
//  Created by Sean Gilhuly on 5/31/16.
//  Copyright © 2016 Sean Gilhuly. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(instancetype)initWithTimeStamp:(NSString *)timeStamp title:(NSString *)title bodyText:(NSString *)bodyText
{
    self = [super init];
    if (self) {
        self.timeStamp = timeStamp;
        self.title = title;
        self.bodyText = bodyText;
    }
    return self;
}
@end
