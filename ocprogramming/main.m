//
//  main.m
//  ocprogramming
//
//  Created by Nigel Lee on 10/22/16.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "A.h"
#import "B.h"
#import "C.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        id b = [[B alloc] init];
        id c = [[C alloc] init];
        
        printf("execute [b method1]\n");
        [b method1];
        printf("execute [b method2]\n");
        [b method2];
        printf("execute [c method1]\n");
        [c method1];
        printf("execute [c method2]\n");
        [c method2];

        
        // for management of memory in Objective-C
        id obj = [[NSObject alloc]init];
        printf("reference count of obj is:%d\n",(int)[obj retainCount]);
        id obj2 = [obj retain];
        [obj retain]; // using in the circumstance of MRC, while not being allowed in ARC
        printf("reference count of obj is:%d\n",(int)[obj retainCount]);
        [obj retain];
        printf("reference count of obj is:%d\n",(int)[obj retainCount]);
        printf("reference count of obj2 is:%d\n",(int)[obj2 retainCount]);
        
        [obj release];
        printf("reference count of obj is:%d\n",(int)[obj retainCount]);
        printf("reference count of obj2 is:%d\n",(int)[obj2 retainCount]);
        [obj release];
        printf("reference count of obj is:%d\n",(int)[obj retainCount]);
        printf("reference count of obj2 is:%d\n",(int)[obj2 retainCount]);
        [obj2 release];
        printf("reference count of obj is:%d\n",(int)[obj retainCount]);
        printf("reference count of obj2 is:%d\n",(int)[obj2 retainCount]);
        
        // access control indentifier
        A *objA = [[A alloc]init];
        objA->a = 7;
        NSInteger n = objA->a;
        printf("%ld\n", n);
        
    }
    return 0;
}
