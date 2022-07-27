//
//  UIImage+DPImageCompressJPEG.h
//  DPImageCompress
//
//  Created by dp on 2022/7/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (DPImageCompressJPEG)
- (NSData *)compressToJpeg:(NSString *)outputFilePath;
///quality: 1-100
- (void)saveToFlie:(NSString *)outputFilePath quality:(int)quality;
+ (BOOL)compressToJpeg:(NSString *)inputFilePath output:(NSString *)outputFilePath;
@end

NS_ASSUME_NONNULL_END
