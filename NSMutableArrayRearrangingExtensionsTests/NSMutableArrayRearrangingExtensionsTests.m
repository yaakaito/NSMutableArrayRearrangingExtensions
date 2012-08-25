//
//  NSMutableArrayRearrangingExtensionsTests.m
//  NSMutableArrayRearrangingExtensionsTests
//
//  Created by KAZUMA Ukyo on 12/08/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSMutableArrayRearrangingExtensionsTests.h"
#import "NSMutableArray+Rearranging.h"

@implementation NSMutableArrayRearrangingExtensionsTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testMoveToHead
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectToHead:@"C"];
    STAssertEqualObjects(@"C", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"A", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"B", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"D", [array objectAtIndex:3], @"[3]");
}

- (void)testMoveToTail
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectToTail:@"B"];
    STAssertEqualObjects(@"A", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"C", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"D", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"B", [array objectAtIndex:3], @"[3]");
}

- (void)testMoveObjectsToHead {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectsToHead:@[@"B", @"C"]];
    STAssertEqualObjects(@"B", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"C", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"A", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"D", [array objectAtIndex:3], @"[3]");
}

- (void)testMoveObjectsToHead2 {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectsToHead:@[@"B", @"D"]];
    STAssertEqualObjects(@"B", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"D", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"A", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"C", [array objectAtIndex:3], @"[3]");
}

- (void)testMoveObjectsToTail {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectsToTail:@[@"B", @"C"]];
    STAssertEqualObjects(@"A", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"D", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"B", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"C", [array objectAtIndex:3], @"[3]");
}

- (void)testMoveObjectsToTail2 {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectsToTail:@[@"A", @"C"]];
    STAssertEqualObjects(@"B", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"D", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"A", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"C", [array objectAtIndex:3], @"[3]");
}

- (void)testObjectsForAfterObject {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    NSArray *result = [array objectsForAfterObject:@"B"];
    STAssertEqualObjects(@"C", [result objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"D", [result objectAtIndex:1], @"[1]");
}

- (void)testObjectsForBeforeObject {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    NSArray *result = [array objectsForBeforeObject:@"C"];
    STAssertEqualObjects(@"A", [result objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"B", [result objectAtIndex:1], @"[1]");
}

- (void)testMoveObjectsForAfterToHeadObject {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectsForAfterObjectToHead:@"B"];
    STAssertEqualObjects(@"C", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"D", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"A", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"B", [array objectAtIndex:3], @"[3]");
}

- (void)testMoveObjectsForBeforeObjectToTail {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", @"C", @"D", nil];
    [array moveObjectsForBeforeObjectToTail:@"C"];
    STAssertEqualObjects(@"C", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"D", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"A", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"B", [array objectAtIndex:3], @"[3]");
}

- (void)testInsertObjectsAtIndex {
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@"A", @"B", nil];
    [array insertObjects:@[@"C", @"D"] atIndex:1];
    STAssertEqualObjects(@"A", [array objectAtIndex:0], @"[0]");
    STAssertEqualObjects(@"C", [array objectAtIndex:1], @"[1]");
    STAssertEqualObjects(@"D", [array objectAtIndex:2], @"[2]");
    STAssertEqualObjects(@"B", [array objectAtIndex:3], @"[3]");
}

@end
