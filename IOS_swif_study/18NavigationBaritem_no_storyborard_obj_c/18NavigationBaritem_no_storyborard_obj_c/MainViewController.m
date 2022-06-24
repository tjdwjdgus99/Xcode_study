//
//  ViewController.m
//  18NavigationBaritem_no_storyborard_obj_c
//
//  Created by 성정현 on 2022/06/22.
//

#import "MainViewController.h"
#import "ProfileViewController.h"
#import "MessgeViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"홈";
    self.view.backgroundColor = [UIColor systemRedColor];
    
    //  네비게이션 아이템 추가
    self.navigationItem.leftBarButtonItem =[[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"person.fill"] style:UIBarButtonItemStylePlain target:self action:@selector(goToProfileVC)];
    
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc] initWithImage:[UIImage systemImageNamed:@"message.circle.fill"] style:UIBarButtonItemStylePlain target:self action:@selector(goToMessageVC)];
}

-(void)goToProfileVC{
    NSLog(@"MainViewController = goToProfileVC() called");
    ProfileViewController * profileVC = [[ProfileViewController alloc] init];
    [self.navigationController pushViewController:profileVC animated:YES];
    
}

-(void)goToMessageVC{
    NSLog(@"MainViewController = goToMessageVC() called");
    MessgeViewController * messageVC = [[MessgeViewController alloc] init];
    [self.navigationController pushViewController:messageVC animated:YES];
}

@end
