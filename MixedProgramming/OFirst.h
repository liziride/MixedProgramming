//
//  First.h
//  MixedProgramming
//
//  Created by 黎春阳 on 15/6/4.
//  Copyright (c) 2015年 黎春阳. All rights reserved.
//

#ifndef MixedProgramming_OFirst_h
#define MixedProgramming_OFirst_h

#import <Foundation/Foundation.h>

#endif

@interface OFirst : NSObject{
    int a;
}
-(void) LCYprintln:(NSString *) str;
+(NSString*) getHaha;
-(int) getA;
-(void) setA:(int) _a;
-(int) getC;
-(void) setC:(int) _c;
@end