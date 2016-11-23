//
//  DriverInfo.h
//  ocprogramming
//
//  Created by Nigel Lee on 23/11/2016.
//  Copyright © 2016 Apress. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DriverInfo : NSObject
{
@protected
    id obj;
    
@private
    NSString *str;
    
@public
    NSObject *a;
}

- (void)initializing;
@property id obj;
@end
