//
//  ViewController.m
//  BlurView
//
//  Created by MAEDAHAJIME on 2015/06/23.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//StoryboardからコネクションしたUIView
@property (weak, nonatomic) IBOutlet UIView *blurView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // バックグラウンド画像
    UIImage *image  = [UIImage imageNamed:@"img04"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    
    /*
     * UIBlurEffectStyleExtraLight（非常に明るい）
     * UIBlurEffectStyleLight（明るい）
     * UIBlurEffectStyleDark（暗い）
    */
    //ブラースタイルの決定
    UIVisualEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    //VisualEffectViewにVisualEffectを設定
    UIVisualEffectView *effectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    //VisualEffectViewを_blurViewと同じサイズに設定
    effectView.frame = self.blurView.bounds;
    
    //self.blurViewにVisualEffectViewを追加
    [self.blurView addSubview:effectView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
