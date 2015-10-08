//
//  ViewController.m
//  ShortCodesDemo
//
//  Created by Orhun Mert Şimşek on 08/10/15.
//  Copyright © 2015 4pps. All rights reserved.
//

#import "ViewController.h"
#import "ImageCodes.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"logo"];
    
    ImageCodes *iCodes = [[ImageCodes alloc] initWithImage:image];
    
    UIImage *newImage = [iCodes squareImageByScaling:SQUARE_BY_WIDTH];
    // UIImage *newImage = [iCodes squareImageByCropping:SQUARE_BY_HEIGHT];
    
    [_imageView setImage:newImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
