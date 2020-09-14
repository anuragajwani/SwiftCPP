//
//  HelloWorldWrapper.m
//  SwiftCPP
//
//  Created by Anurag Ajwani on 14/09/2020.
//

#import <Foundation/Foundation.h>
#import "HelloWorldWrapper.h"
#import "HelloWorld.hpp"

@implementation HelloWorldWrapper

- (NSString *) sayHello {
    HelloWorld helloWorld;
    std::string helloWorldMessage = helloWorld.sayHello();
    return [NSString
            stringWithCString:helloWorldMessage.c_str()
            encoding:NSUTF8StringEncoding];
}

@end
