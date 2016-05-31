//
//  EntryController.h
//  Journal-C
//
//  Created by Sean Gilhuly on 5/31/16.
//  Copyright © 2016 Sean Gilhuly. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic) NSMutableArray *entries;

-(void)addEntry:(Entry *)entry;
-(void)removeEntry:(Entry *)entry;

+(EntryController *)sharedInstance;
-(instancetype)init;

@end