//
//  Person.h
//  MemoryManagerDemo
//
//  Created by UncleDrew on 2018/9/22.
//  Copyright © 2018年 UncleDrew. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Book;

@interface Person : NSObject
{
    Book* book;
}

- (void) setBook:(Book*)book;
- (Book*)book;

-(void)sayHello;

@end
