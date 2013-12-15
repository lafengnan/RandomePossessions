//
//  Possession.h
//  RandomePossessions
//
//  Created by lafengnan on 13-12-15.
//  Copyright (c) 2013年 lafengnan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Possession : NSObject
{
    NSString *possessionName;
    NSString *serialNumber;
    int valueInDollars;
    NSDate *dateCreated;
}

+ (id)randomPossession;

- (id)initWithProcessionName:(NSString *)name valueInDolloars:(int)value serialNumber:(NSString *)sNumber;

//- (void)setPossessionName:(NSString *)str;
//- (NSString *)possessionName;
//
//- (void)setSerialNumber:(NSString *)str;
//- (NSString *)serialNumber;
//
//- (void)setValueInDollars:(int)i;
//- (int)valueInDollars;
//
//- (NSDate *)dateCreated;

@property (nonatomic, retain) NSString *possessionName;
@property (nonatomic, retain) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, readonly) NSDate *dateCreated;


@end
