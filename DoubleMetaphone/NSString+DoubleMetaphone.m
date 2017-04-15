//
//  NSString+DoubleMetaphone.m
//  DoubleMetaphone
//
//  Created by Adam Wulf on 4/14/17.
//  Copyright © 2017 Milestone Made. All rights reserved.
//

#import "NSString+DoubleMetaphone.h"
#include "double_metaphone.h"

@implementation NSString (DoubleMetaphone)

-(NSArray<NSString*>*) metaphones{
    const char* str = [self UTF8String];
    auto result = dm::double_metaphone(str);
    
    NSString* ret1;
    NSString* ret2;
    if(result.first.c_str() != nil){
        ret1 = [NSString stringWithUTF8String:result.first.c_str()];
    }
    
    if(result.second.c_str() != nil){
        ret2 = [NSString stringWithUTF8String:result.second.c_str()];
    }
    
    if(ret1 && ret2){
        return @[ret1, ret2];
    }else if(ret1){
        return @[ret1];
    }else if(ret2){
        return @[ret2];
    }else{
        return @[];
    }
}

@end
