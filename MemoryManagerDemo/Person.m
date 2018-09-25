//
//  Person.m
//  MemoryManagerDemo
//
//  Created by UncleDrew on 2018/9/22.
//  Copyright © 2018年 UncleDrew. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype) person {
    Person *person = [[Person alloc]init];
    [person autorelease]; //取得已存在的对象，但自己不持有
    return person;
}

- (void) setBook:(Book*)book {
    
    if (self.book != book) {
        
        [self.book release];
        self.book = [book retain];
    }
}

- (Book*)book {
    return book;
}

-(void)sayHello {
    NSLog(@"%s hello", __func__);
}

- (void)dealloc {
    NSLog(@"%s, retainCount:%ld", __func__, self.retainCount);
    //为什么retainCount不为0？而且还能发消息
    //    我的思考：在多次测试中，person被释放的实际都不是确定的，所以
    //    是否是retainCount只是个标记，为0时并不表示会立马释放内存。
    //    此时指针还是指向这那块内存，所以给该对象发消息依然能收到
    
    [super dealloc];
}

@end
