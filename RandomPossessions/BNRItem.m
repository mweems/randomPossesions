//
//  BNRItem.m
//  RandomPossessions
//
//  Created by mweems on 12/6/13.
//  Copyright (c) 2013 mweems. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+ (id)randomItem
{
    NSArray *randomNameList = [NSArray arrayWithObjects:@"Large TV",@"Sofa Bed",@"Entertainment Center", nil];
    NSInteger nameIndex = rand() % [randomNameList count];
    NSString *randomName = [randomNameList objectAtIndex:nameIndex];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                    'O' + rand() % 10,
                                    'A' + rand() % 26,
                                    'O' + rand() % 10,
                                    'A' + rand() % 26,
                                    'O' + rand() % 10];
    
    BNRItem *newItem = [[self alloc] initWithItemName:randomName
                                          valueInDollars:randomValue
                                          serialNumber:randomSerialNumber];
    
    return newItem;
    
    
}

- (id)init
{
    return [self initWithItemName:@"Item" valueInDollars:0 serialNumber:@""];
}

- (id)initWithItemName:(NSString *)name serialNumber:(NSString *)serial
{
    return [self initWithItemName:name valueInDollars:0 serialNumber:serial];
}

- (id)initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)serial
{
    self = [super init];
    if(self)
    {
      [self setItemName:name];
      [self setValueInDollars:value];
      [self setSerialNumber:serial];
    }
    return self;
}

- (void)setItemName:(NSString *)str
{
    itemName = str;
}

- (NSString *)itemName
{
    return itemName;
}

- (void)setSerialNumber:(NSString *)str
{
    serialNumber = str;
}

- (NSString *)serialNumber
{
    return serialNumber;
}

- (void)setValueInDollars:(int)i
{
    valueInDollars = i;
}

- (int)valueInDollars
{
    return valueInDollars;
}

- (NSDate *)dateCreated
{
    return dateCreated;
}

- (NSString *)description
{
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@(%@): Worth $%d, recorded on %@",
                                   itemName,serialNumber,valueInDollars,dateCreated];
    return descriptionString;
}

@end
