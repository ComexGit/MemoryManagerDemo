//
//  Person.m
//  MemoryManagerDemo
//
//  Created by UncleDrew on 2018/9/22.
//  Copyright © 2018年 UncleDrew. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)sayHello {
    NSLog(@"%s hello", __func__);
}

- (void)dealloc {
    NSLog(@"%s, retainCount:%ld", __func__, self.retainCount);
    //为什么retainCount不为0？而且还能发消息
    //    我的思考：是否是retainCount只是个标记，为0时并不表示会立马释放内存。
    //    此时指针还是指向这那块内存，所以给该对象发消息依然能收到
    [super dealloc];
}

@end