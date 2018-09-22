//
//  MRCFile.m
//  MemoryManagerDemo
//
//  Created by UncleDrew on 2018/9/22.
//  Copyright © 2018年 UncleDrew. All rights reserved.
//

#import "MRCFile.h"
#import "Person.h"

@implementation MRCFile

+ (void) test {
    
    // 只要创建一个对象默认引用计数器的值就是1
    Person *p = [[Person alloc] init];
    NSLog(@"retainCount = %lu", [p retainCount]); // 1
    
    // 只要给对象发送一个retain消息, 对象的引用计数器就会+1
    [p retain];
    
    NSLog(@"retainCount = %lu", [p retainCount]); // 2
    // 通过指针变量p,给p指向的对象发送一条release消息
    // 只要对象接收到release消息, 引用计数器就会-1
    // 只要一个对象的引用计数器为0, 系统就会释放对象
    
    [p release];
    // 需要注意的是: release并不代表销毁\回收对象, 仅仅是计数器-1
    NSLog(@"retainCount = %lu", [p retainCount]); // 1
    
    [p release]; // 0
    NSLog(@"--------");
    
//    [NSThread sleepForTimeInterval:2.];
//    [p sayHello];
    
    
//    2018-09-22 10:52:07.630427+0800 MemoryManagerDemo[984:33747] retainCount = 1
//    2018-09-22 10:52:07.630604+0800 MemoryManagerDemo[984:33747] retainCount = 2
//    2018-09-22 10:52:07.630623+0800 MemoryManagerDemo[984:33747] retainCount = 1
//    2018-09-22 10:52:07.630649+0800 MemoryManagerDemo[984:33747] --------
}

@end
