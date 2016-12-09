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
#import "DriverInfo.h"

//static const NSString *st;
typedef char * (*Fp)(char *p1, char *p2); // define alias of an function pointer

// define an function to return the unique string
char *returnString(char *s1, char *s2) {
    int i = 0;
    char *finalString = NULL;
    printf("the size of f1 is: %ld\n", sizeof(finalString));
    i = strcmp(s1, s2);
    finalString = (i != 0)? s1 : s2;
    return finalString;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        /**
         *ARC n MRC testing
         **/
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
   ////////////////////////////////////////////////////////////////
        
    }
    
    /**
     * function pointer testing
     **/
    Fp f1;
    printf("the address of f1 is: %p\n", f1);
    printf("the size of f1 is: %ld\n", sizeof(f1));
    f1 = returnString; // function pointer f1 to point to an function which defined before main function
    char *result = f1("hello", "friends"); // to call function returnString by using Fp
    printf("this result is: %s\n", result);
    printf("the address of returnString is: %p\n", returnString);
    printf("the address of f1 is: %p\n", f1);
    f1 = NULL;
    printf("the address of f1 is: %p\n", f1);
    
    // for test @property syntax
    DriverInfo *info = [[DriverInfo alloc]init];
    [info initializing];
    ////////////////////////////////////////////////////////////////

    
    
    return 0;
}
