//
//  ImageCodes.h
//  ShortCodes
//
//  Created by Orhun Mert Şimşek on 08/10/15.
//  Copyright © 2015 4pps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define SQUARE_BY_WIDTH 0
#define SQUARE_BY_HEIGHT 1

@interface ImageCodes : NSObject

@property (nonatomic, readonly) UIImage *originalImage;

-(id) initWithImage:(UIImage * ) image;
-(UIImage * ) squareImageByCropping:(int) selection;
-(UIImage * ) squareImageByScaling:(int) selection;

@end
