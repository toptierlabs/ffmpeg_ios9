//
//  ViewController.m
//  FFMpegTest
//
//  Created by Anthony Figueroa on 10/7/15.
//  Copyright © 2015 Anthony Figueroa. All rights reserved.
//

#import "ViewController.h"
#import "FFmpegWrapper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) tapOnClick:(id)sender {
    FFmpegWrapper *wrapper = [[FFmpegWrapper alloc] init];
    [wrapper convertInputPath:@"" outputPath:@"file.mp4" options:@{} progressBlock:^(NSUInteger bytesRead, uint64_t totalBytesRead, uint64_t totalBytesExpectedToRead) {
        NSLog(@"Progress");
    } completionBlock:^(BOOL success, NSError *error) {
        NSLog(@"Completed");
    
    }];
}
@end
