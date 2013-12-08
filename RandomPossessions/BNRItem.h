//
//  BNRItem.h
//  RandomPossessions
//
//  Created by mweems on 12/6/13.
//  Copyright (c) 2013 mweems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *itemName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}
+ (id)randomItem;
- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serial;
- (void)setItemName:(NSString *)str;
- (NSString *) itemName;
- (void)setSerialNumber:(NSString *)str;
- (NSString *) serialNumber;
- (void)setValueInDollars:(int)i;
- (int) valueInDollars;
- (NSDate *) dateCreated;


@end
