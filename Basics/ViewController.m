//
//  ViewController.m
//  Basics
//
//  Created by Frank Hintsch on 30.12.19.
//  Copyright © 2019 Frank Hintsch IT Consulting. All rights reserved.
//

#import "ViewController.h"

#import <sys/utsname.h>

NSString *machineName()
{
    struct utsname systemInfo;
    uname(&systemInfo);

    NSString* deviceModel = [NSString stringWithCString:systemInfo.machine
                                               encoding:NSUTF8StringEncoding];

    return deviceModel;
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    _screenWidth.text = [[NSNumber numberWithFloat:screenRect.size.width] stringValue];
    _screenHeight.text = [[NSNumber numberWithFloat:screenRect.size.height] stringValue];
    _deviceName.text = machineName();
}


@end
