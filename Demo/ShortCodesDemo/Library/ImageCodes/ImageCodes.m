//
//  ImageCodes.m
//  ShortCodes
//
//  Created by Orhun Mert Şimşek on 08/10/15.
//  Copyright © 2015 4pps. All rights reserved.
//

#import "ImageCodes.h"

@implementation ImageCodes

- (id)initWithImage:(UIImage *)image
{
    self = [super init];
    if (self) {
        _originalImage  = image;
    }
    return self;
}

-(UIImage *) squareImageByCropping:(int)selection
{
    CGImageRef imageRef;
    if(selection == SQUARE_BY_WIDTH) {
        imageRef = CGImageCreateWithImageInRect([_originalImage CGImage], CGRectMake(0, 0, _originalImage.size.width, _originalImage.size.width));
    }
    else {
        imageRef = CGImageCreateWithImageInRect([_originalImage CGImage], CGRectMake(0, 0, _originalImage.size.height, _originalImage.size.height));
    }
    UIImage *croppedImage = [UIImage imageWithCGImage:imageRef];
    CGImageRelease(imageRef);
    
    return croppedImage;
}

-(UIImage *) squareImageByScaling:(int)selection
{
    CGSize size;
    
    if(selection == SQUARE_BY_WIDTH) {
        size = CGSizeMake(_originalImage.size.width, _originalImage.size.width);
    }
    else {
        size = CGSizeMake(_originalImage.size.height, _originalImage.size.height);
    }
    
    UIGraphicsBeginImageContext(size);
    [_originalImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *destImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return destImage;
}

@end

