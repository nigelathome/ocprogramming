//
//  testself.m
//  ocprogramming
//
//  Created by Nigel Lee on 10/22/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdio.h>

@interface A : NSObject
- (void)method1;
- (void)method2;
@end

@implementation A
- (void)method1
{
    printf("method1 of Class A\n");
}

- (void)method2
{
    printf("method2 of Class A\n");
}

@end

