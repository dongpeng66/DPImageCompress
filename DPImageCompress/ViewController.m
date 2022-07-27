//
//  ViewController.m
//  DPImageCompress
//
//  Created by dp on 2022/7/27.
//

#import "ViewController.h"
#import "UIImage+DPImageCompressPNG.h"
#import "UIImage+DPImageCompressJPEG.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSString *dicPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *outPath = [NSString stringWithFormat:@"%@/1001_c.jpg",dicPath];
    NSString *inPath = [[NSBundle mainBundle] pathForResource:@"1001" ofType:@"jpg"];
    UIImage *jpeg = [UIImage imageNamed:@"1001.jpg"];
    [jpeg saveToFlie:outPath quality:80];
    NSLog(@"outPath===%@",outPath);
    return;
    [jpeg compressToJpeg:outPath];
    outPath = [NSString stringWithFormat:@"%@/1001_cs.jpg",dicPath];
    [UIImage compressToJpeg:inPath output:outPath];
    
    NSLog(@"outPath===%@",outPath);


    //PNG：xcode会先优化成非标准PNG所以暂不处理这种图片 测试请用iTunes的文件共享拖到Document下
    outPath = [NSString stringWithFormat:@"%@/1002_c.png",dicPath];
    inPath =  [NSString stringWithFormat:@"%@/Calendar.png",dicPath];
    UIImage *pngImage = [UIImage imageNamed:@"1002"];
    [pngImage compressToPNG:outPath];
    outPath = [NSString stringWithFormat:@"%@/1002_cs.png",dicPath];
    [UIImage compressToPNG:inPath output:outPath];

    outPath = [NSString stringWithFormat:@"%@/1003_c.png",dicPath];
    inPath = [NSString stringWithFormat:@"%@/1003.png",dicPath];
    pngImage = [UIImage imageNamed:@"1003"];
    [pngImage compressToPNG:outPath];
    outPath = [NSString stringWithFormat:@"%@/1003_cs.png",dicPath];
    [UIImage compressToPNG:inPath output:outPath];
}

@end
