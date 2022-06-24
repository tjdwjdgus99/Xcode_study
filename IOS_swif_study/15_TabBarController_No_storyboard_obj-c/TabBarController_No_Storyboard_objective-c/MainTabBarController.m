//
//  MainTabBarController.m
//  TabBarController_No_Storyboard_objective-c
//
//  Created by Jeff Jeong on 2020/06/02.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

#import "MainTabBarController.h"
#import "MyViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"MainTabBarController - viewDidLoad() called");
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController * firstNC = [[UINavigationController alloc] initWithRootViewController: [[MyViewController alloc] initWithParams:@"첫번째" bgColor: [UIColor redColor]]];
    
    UINavigationController * secondNC = [[UINavigationController alloc] initWithRootViewController: [[MyViewController alloc] initWithParams:@"두번째" bgColor:[UIColor yellowColor]]];
    
    UINavigationController * thirdNC = [[UINavigationController alloc] initWithRootViewController: [[MyViewController alloc] initWithParams:@"세번째" bgColor:[UIColor orangeColor]]];
    
    UINavigationController * forthNC = [[UINavigationController alloc] initWithRootViewController: [[MyViewController alloc] initWithParams:@"네번째" bgColor:[UIColor greenColor]]];
    
    UINavigationController * fifthNC = [[UINavigationController alloc] initWithRootViewController: [[MyViewController alloc] initWithParams:@"다섯번째" bgColor:[UIColor purpleColor]]];
    
    // 배열준비
    NSMutableArray * vcArray = [NSMutableArray array];
    
    [vcArray addObject:firstNC];
    [vcArray addObject:secondNC];
    [vcArray addObject:thirdNC];
    [vcArray addObject:forthNC];
    [vcArray addObject:fifthNC];
    
    UITabBarItem * firstTabBarItem = [[UITabBarItem alloc] initWithTitle:@"첫번째" image:[UIImage systemImageNamed: @"square.and.arrow.down.fill"]tag:0];
    UITabBarItem * secondTabBarItem = [[UITabBarItem alloc] initWithTitle:@"두번째" image:[UIImage systemImageNamed: @"paperplane.fill"]tag:1];
    UITabBarItem * thirdTabBarItem = [[UITabBarItem alloc] initWithTitle:@"세번째" image:[UIImage systemImageNamed: @"pencil.circle.fill"]tag:2];
    UITabBarItem * forthTabBarItem = [[UITabBarItem alloc] initWithTitle:@"네번째" image:[UIImage systemImageNamed: @"book.fill"]tag:3];
    UITabBarItem * fifthTabBarItem = [[UITabBarItem alloc] initWithTitle:@"다섯번째" image:[UIImage systemImageNamed: @"bookmark.fill"]tag:4];
    
    
    firstNC.tabBarItem = firstTabBarItem;
    secondNC.tabBarItem = secondTabBarItem;
    thirdNC.tabBarItem = thirdTabBarItem;
    forthNC.tabBarItem = forthTabBarItem;
    fifthNC.tabBarItem = fifthTabBarItem;
    
    
    self.viewControllers = vcArray;
    

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
