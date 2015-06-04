//
//  first.c
//  MixedProgramming
//
//  Created by 黎春阳 on 5/22/15.
//  Copyright (c) 2015 黎春阳. All rights reserved.
//

#include "first.h"

#define PI 3.1415926

int LCYprintln(char *str){
    printf("str=%s\n",str);
    return -1;
}

void LCYprintln2(char *const str){
    printf("str=%s\n",str);
}

char* LCYprintln3(const char *str){
    printf("str=%s\n",str);
    char *input;
    scanf("%s",input);
    return input;
}

void test(){
    
}