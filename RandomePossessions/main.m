//
//  main.m
//  RandomePossessions
//
//  Created by lafengnan on 13-12-15.
//  Copyright (c) 2013年 lafengnan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Possession.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        //NSLog(@"Hello, World!");
        
        NSMutableArray *items= [[NSMutableArray alloc] init];
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        [items insertObject:@"Four" atIndex:0];
        NSLog(@"%@", [items description]);
        for (int i = 0; i < [items count]; i++) {
            NSLog(@"%@", [items objectAtIndex:i]);
        }
        
        
        for (int i = 0; i < 10; i++) {
            Possession *p = [Possession randomPossession];
            [items addObject:p];
        }
        
        for (Possession *item in items) {
            NSLog(@"%@", item);
        }
    
    }
    
    
    return 0;
}

