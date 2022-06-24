//
//  ViewController.m
//  TabBarController_No_Storyboard_objective-c
//
//  Created by Jeff Jeong on 2020/06/02.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController


- (id) initWithParams:(NSString *)title bgColor:(UIColor *)bgColor {
    self.title = title;
    self.view.backgroundColor = bgColor;
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}




@end
