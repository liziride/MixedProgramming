//
//  First.m
//  MixedProgramming
//
//  Created by 黎春阳 on 15/6/4.
//  Copyright (c) 2015年 黎春阳. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OFirst.h"

@interface OFirst(){
    int c;
}
+(NSString*) getHaha2;
@end

@implementation OFirst

- (instancetype)init
{
    self = [super init];
    if (self) {
        a = 1;
        c = 3;
    }
    return self;
}

-(void) LCYprintln:(NSString *) str{
    printf("aa=%s\n",[str UTF8String]);
}

+(NSString*) getHaha{
    return @"hahaha";
}

+(NSString*) getHaha2{
    return @"hahaha2";
}

-(int) getA{
    return a;
}

-(void) setA:(int)_a{
    a = _a;
}

-(int) getC{
    return c;
}

-(void) setC:(int)_c{
    c = _c;
}
@end