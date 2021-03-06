//
//  Entry.h
//  Journal-C
//
//  Created by Sean Gilhuly on 5/31/16.
//  Copyright © 2016 Sean Gilhuly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

//Add properties for timestamp, title, and body text

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *bodyText;
@property (copy, nonatomic) NSDate *timeStamp;

-(instancetype)initWithName: (NSString *)title bodyText:(NSString *)bodyText;

@end