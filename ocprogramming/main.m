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

//static const NSString *st;
typedef char * (*Fp)(char *p1, char *p2);

// define an function to return the unique string
char *returnString(char *s1, char *s2) {
    int i = 0;
    char *finalString = NULL;
    i = strcmp(s1, s2);
    finalString = (i != 0)? s1 : s2;
    return finalString;
}

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
        
        
        
//        printf("reference count of st: %ld", [st retainCount]);
        
        
    }
    Fp f1 = returnString; // function pointer f1 to point to an function which defined before main function
    char *result = f1("hello", "friends"); // to call function returnString by using Fp
    printf("this result is: %s\n", result);
    
    return 0;
}
