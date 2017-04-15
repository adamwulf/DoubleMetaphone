//
//  DoubleMetaphoneTests.m
//  DoubleMetaphoneTests
//
//  Created by Adam Wulf on 4/14/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+DoubleMetaphone.h"

@interface DoubleMetaphoneTests : XCTestCase

@end

@implementation DoubleMetaphoneTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSArray<NSString*>*metaphones = [@"succeed" metaphones];
    
    XCTAssertEqual([metaphones count], 2);
    XCTAssertEqualObjects(metaphones[0], @"SKST");
    XCTAssertEqualObjects(metaphones[1], @"SKST");
}

@end
