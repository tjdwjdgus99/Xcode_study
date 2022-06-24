//
//  main.m
//  ProjectWithoutStoryboard_objectvie-c
//
//  Created by Jeff Jeong on 2020/06/01.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
