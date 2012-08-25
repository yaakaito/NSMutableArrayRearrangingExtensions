//
//  NSMutableArray+Rearranging.h
//  NSMutableArrayRearrangingExtensions
//
//  Created by KAZUMA Ukyo on 12/08/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (Rearranging)

- (void)moveObjectToHead:(id)object;
- (void)moveObjectToTail:(id)object;
- (void)moveObjectsToHead:(NSArray*)objects;
- (void)moveObjectsToTail:(NSArray*)objects;
- (NSArray*)objectsForAfterObject:(id)object;
- (NSArray*)objectsForBeforeObject:(id)object;
- (void)moveObjectsForAfterObjectToHead:(id)object;
- (void)moveObjectsForBeforeObjectToTail:(id)object;
- (void)insertObjects:(NSArray *)objects atIndex:(NSUInteger)index;
@end
