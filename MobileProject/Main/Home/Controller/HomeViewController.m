//
//  HomeViewController.m
//  MobileProject
//
//  Created by wujunyang on 16/1/14.
//  Copyright © 2016年 wujunyang. All rights reserved.
//

#import "HomeViewController.h"
#import "WJScrollerMenuView.h"
#import "RDVTabBarController.h"

@interface HomeViewController () <WJScrollerMenuDelegate>

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor redColor];
    [self createDemos];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createDemos {
    //百度地图 demo
    //    NSMutableArray *coordinates=[[NSMutableArray alloc]init];
    //
    //    BaiDuCoordinateModel *first=[[BaiDuCoordinateModel alloc]init];
    //    first.coordinate_comments=@"我是第一个坐标";
    //    first.coordinate_title=@"第一站";
    //    first.coordinate_objID=1;
    //    first.coordinate_latitude=24.496589;
    //    first.coordinate_longitude=118.188555;
    //    [coordinates addObject:first];
    //
    //    BaiDuCoordinateModel *second=[[BaiDuCoordinateModel alloc]init];
    //    second.coordinate_comments=@"我是第二个坐标";
    //    second.coordinate_title=@"第二站";
    //    second.coordinate_objID=1;
    //    second.coordinate_latitude=24.49672;
    //    second.coordinate_longitude=118.182051;
    //    [coordinates addObject:second];
    //
    //    BaiDuMapViewController *vc=[[BaiDuMapViewController alloc]init];
    //    vc.coordinates=coordinates;
    //    [self.navigationController pushViewController:vc animated:YES];
    
    //!< WJScrollerMenuView 示例
    WJScrollerMenuView *wjsvc=[[WJScrollerMenuView alloc]initWithFrame:CGRectMake(0, 64, [[UIScreen mainScreen] bounds].size.width, 50) showArrayButton:YES];
    wjsvc.delegate=self;
    wjsvc.backgroundColor=[UIColor whiteColor];
    wjsvc.selectedColor=[UIColor blueColor];
    wjsvc.noSlectedColor=[UIColor blackColor];
    wjsvc.myTitleArray=@[@"第一阶段",@"第二阶段",@"第三阶段",@"第四阶段",@"第五阶段"];
    wjsvc.currentIndex=0;
    [self.view addSubview:wjsvc];
    
    UIViewController *firstViewController = [[UIViewController alloc] init];
    UIViewController *firstNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:firstViewController];
    
    UIViewController *secondViewController = [[UIViewController alloc] init];
    UIViewController *secondNavigationController = [[UINavigationController alloc]
                                                    initWithRootViewController:secondViewController];
    
    UIViewController *thirdViewController = [[UIViewController alloc] init];
    UIViewController *thirdNavigationController = [[UINavigationController alloc]
                                                   initWithRootViewController:thirdViewController];
    
    RDVTabBarController *tabBarController = [[RDVTabBarController alloc] init];
    [tabBarController setViewControllers:@[firstNavigationController, secondNavigationController,
                                           thirdNavigationController]];
//    self.viewController = tabBarController;
}


- (void)itemDidSelectedWithIndex:(NSInteger)index {
    NSLog(@"当前选择项的索引：%ld", (long)index);
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
