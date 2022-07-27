//
//  UIImage+DPImageCompressPNG.h
//  DPImageCompress
//
//  Created by dp on 2022/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (DPImageCompressPNG)
- (NSData *)compressToPNG:(NSString *)outputFilePath;
- (NSData *)compressToPNG:(NSString *)outputFilePath withMiniMum:(int)minimum withTarget:(int)target;
+ (BOOL)compressToPNG:(NSString *)inputFilePath output:(NSString *)outputFilePath;
+ (BOOL)compressToPNG:(NSString *)inputFilePath output:(NSString *)outputFilePath withMiniMum:(int)minimum withTarget:(int)target;
@end

NS_ASSUME_NONNULL_END
