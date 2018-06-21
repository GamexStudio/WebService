//
//  ViewController.m
//  SampleWSManager
//
//  Created by Akruti Panchal on 21/06/18.
//  Copyright © 2018 XYZ. All rights reserved.
//

#import "ViewController.h"
#import "WSManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self callAPI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) callAPI {
    
    [[WSManager sharedInstance] callGetService: @"http://" method: @"POST" completionBlock:^(BOOL succeeded, id responseData, NSString *errorMsg) {
        
    }];
}


@end
