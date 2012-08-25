//
//  NSMutableArray+Rearranging.m
//  NSMutableArrayRearrangingExtensions
//
//  Created by KAZUMA Ukyo on 12/08/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSMutableArray+Rearranging.h"

@implementation NSMutableArray (Rearranging)

- (void)moveObjectToHead:(id)object
{
    [self removeObject:object];
    [self insertObject:object atIndex:0];
}

- (void)moveObjectToTail:(id)object
{
    [self removeObject:object];
    [self addObject:object];
}

- (void)moveObjectsToHead:(NSArray*)objects
{
    [self removeObjectsInArray:objects];
    [self insertObjects:objects atIndex:0];
}

- (void)moveObjectsToTail:(NSArray*)objects
{
    [self removeObjectsInArray:objects];
    [self insertObjects:objects atIndex:[self count]];
}

- (NSArray*)objectsForAfterObject:(id)object
{
    NSInteger idx = [self indexOfObject:object];
    return [self objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(idx+1, [self count] - (idx + 1))]];
}

- (NSArray*)objectsForBeforeObject:(id)object
{
    NSInteger idx = [self indexOfObject:object];
    return [self objectsAtIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(0, idx)]];
}

- (void)moveObjectsForAfterObjectToHead:(id)object
{
    [self moveObjectsToHead:[self objectsForAfterObject:object]];
}

- (void)moveObjectsForBeforeObjectToTail:(id)object
{
    [self moveObjectsToTail:[self objectsForBeforeObject:object]];
}

- (void)insertObjects:(NSArray *)objects atIndex:(NSUInteger)index
{
    [self insertObjects:objects atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(index, [objects count])]];
}
@end
