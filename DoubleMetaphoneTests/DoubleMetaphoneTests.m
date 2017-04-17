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
    
    XCTAssertEqual([metaphones count], 1);
    XCTAssertEqualObjects(metaphones[0], @"SKST");
}

- (void)testMickeyRenaud {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    NSArray<NSString*>*nickiMetaphones = [@"Nicki" metaphones];
    NSArray<NSString*>*reneeMetaphones = [@"Renee" metaphones];
    NSArray<NSString*>*minajMetaphones = [@"Minaj" metaphones];
    
    NSArray<NSString*>*mickeyMetaphones = [@"Mickey" metaphones];
    NSArray<NSString*>*renaudMetaphones = [@"Renaud" metaphones];

    XCTAssertEqual([nickiMetaphones count], 1);
    XCTAssertEqualObjects(nickiMetaphones[0], @"NK");

    XCTAssertEqual([reneeMetaphones count], 1);
    XCTAssertEqualObjects(reneeMetaphones[0], @"RN");

    XCTAssertEqual([minajMetaphones count], 2);
    XCTAssertEqualObjects(minajMetaphones[0], @"MNJ");
    XCTAssertEqualObjects(minajMetaphones[1], @"MN");
    
    XCTAssertEqual([mickeyMetaphones count], 1);
    XCTAssertEqualObjects(mickeyMetaphones[0], @"MK");
    
    XCTAssertEqual([renaudMetaphones count], 1);
    XCTAssertEqualObjects(renaudMetaphones[0], @"RNT");
    
    NSLog(@"%@ %@ (%@)", nickiMetaphones, reneeMetaphones, minajMetaphones);

    NSLog(@"%@ %@", mickeyMetaphones, renaudMetaphones);

    NSLog(@"done");
}

@end
