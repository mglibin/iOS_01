//
//  ViewController.m
//  wenjianyasuo
//
//  Created by ceshizu on 2018/1/12.
//  Copyright © 2018年 ceshizu. All rights reserved.
//

#import "ViewController.h"
#import "SSZipArchive.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    // 6。2:20
    
       // 压缩
////       //Document的路径
//      NSString *zippedPath =  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
//      NSLog(@"%@",zippedPath);
//       //自定义文件名。压缩文件名
//       NSString *destinationPath = [zippedPath stringByAppendingPathComponent:@"2018.zip"];
//
//       //数组里可以放多个源文件，这些文件会被同一打包成压缩包，到 destinationPath 这个路径下。
//       NSArray *inputPaths = [NSArray arrayWithObjects:
//                               [[NSBundle mainBundle] pathForResource:@"201802.png" ofType:nil],
//                               nil];
//
//    //压缩目标文件路径   资源文件路径
//    if ([SSZipArchive createZipFileAtPath:destinationPath withFilesAtPaths:inputPaths]) {
//        NSLog(@"压缩成功");
//    }
//    else {
//        NSLog(@"压缩失败");
//    }

    
    //是否能指定解压名字  ???
    
    
    //[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];    有没有其他写法
    
    
      //添加文件时必须手动添加有bug
    
//
    //1.//Document的路径
    NSString *zippedPath =  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0000000];

          NSLog(@"%@----libin",zippedPath);
//lin
    NSLog(@"lin");
        

    //zipth。  需要解压的文件路线
      NSString *zipth = [zippedPath stringByAppendingPathComponent:@"2018.zip"];



    NSLog(@"zipth----%@",zipth);
     //2。解压到哪里
    NSString *destinationPath =  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
     //3。解压
    if ([SSZipArchive unzipFileAtPath:zipth toDestination:destinationPath]){

        NSLog(@"sussess");
  //
    }else{
        NSLog(@"filure");


    }


    

    
  
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
