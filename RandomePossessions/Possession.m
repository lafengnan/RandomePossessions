//
//  Possession.m
//  RandomePossessions
//
//  Created by lafengnan on 13-12-15.
//  Copyright (c) 2013年 lafengnan. All rights reserved.
//

#import "Possession.h"

@implementation Possession

@synthesize possessionName, serialNumber, valueInDollars, dateCreated;

+ (id)randomPossession
{
    NSArray *randomList = [NSArray arrayWithObjects:@"Clang",
                                                   @"Ruby",
                                                   @"Python", nil];
    
    NSArray *randomAdjList = [NSArray arrayWithObjects:@"Good",
                                                      @"Bad",
                                                      @"SoSo", nil];
    
    int adjIndex = rand() % [randomAdjList count];
    int index = rand() % [randomList count];
    
    NSString *randomName = [NSString stringWithFormat:@"%@ %@",
                                     [randomAdjList objectAtIndex:adjIndex],
                            [randomList objectAtIndex:index]];
    
    int randomValue = rand() % 100;
    
    NSString *randomSerialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                                                              '0' + rand() % 10,
                                                              'A' + rand() % 26,
                                                              '0' + rand() % 10,
                                                              'A' + rand() % 26,
                                    '0' + rand() % 10];
    
    Possession *inst = [[self alloc] initWithProcessionName:randomName valueInDolloars:randomValue serialNumber:randomSerialNumber];
    
    return inst;
    
}

- (id)initWithProcessionName:(NSString *)name valueInDolloars:(int)value serialNumber:(NSString *)sNumber
{
    self = [super init];
    if (self) {
        [self setPossessionName:name];
        [self setValueInDollars:value];
        [self setSerialNumber:sNumber];
        dateCreated = [[NSDate alloc]init];
    }
    return self;
}

- (id)init
{
    return [self initWithProcessionName:@"Possession" valueInDolloars:100 serialNumber:@"9527"];
}

//- (void)setPossessionName:(NSString *)str
//{
//    possessionName = str;
//}
//- (NSString *)possessionName
//{
//    return possessionName;
//}
//- (void)setSerialNumber:(NSString *)str
//{
//    serialNumber = str;
//}
//- (NSString *)serialNumber
//{
//    return serialNumber;
//}
//- (void)setValueInDollars:(int)i
//{
//    valueInDollars = i;
//}
//- (int)valueInDollars
//{
//    return valueInDollars;
//}
//- (NSDate *)dateCreated
//{
//    return dateCreated;
//}

- (NSString *)description
{
    NSString *des = [[NSString alloc] initWithFormat:@"%@ (%@): Worth $%d, recored on %@",
                                      possessionName,
                                      serialNumber,
                                      valueInDollars,
                     dateCreated];
    return des;
}

@end
