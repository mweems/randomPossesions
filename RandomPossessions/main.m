//
//  main.m
//  RandomPossessions
//
//  Created by mweems on 12/6/13.
//  Copyright (c) 2013 mweems. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool
    {
        NSMutableArray *items = [[NSMutableArray alloc] init];
        for (int i = 0; i < 10; i++) {
            BNRItem *newItem = [BNRItem randomItem];
            [items addObject:newItem];
        }
        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        items = nil;
    }
    return 0;
}

