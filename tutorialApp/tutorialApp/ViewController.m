//
//  ViewController.m
//  tutorialApp
//
//  Created by KitamuraShogo on 13/04/16.
//  Copyright (c) 2013年 KitamuraShogo. All rights reserved.
//

#import "ViewController.h"
#import "MYIntroductionView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //------チュートリアルは完璧です。------//
    //パネル1の作成
    MYIntroductionPanel *panel = [[MYIntroductionPanel alloc]initWithimage:[UIImage imageNamed:@"大泉洋.jpg"] description:@"Welcome to MYIntroductionView, your 100 percent customizable interface for introductions and tutorials! Simply add a few classes to your project, and you are ready to go!"];
    //パネル２の作成
    MYIntroductionPanel *panel2 = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"0315今度。.jpg"] description:@"MYIntroductionView is your ticket to a great tutorial or introduction!"];
    //パネル３の作成
    MYIntroductionPanel *panel3 = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage2.png"] description:@"MYIntroductionView is your ticket to a great tutorial or introduction!"];

    //紹介ビューの作成。
    MYIntroductionView *introductionView = [[MYIntroductionView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) headerText:@"水曜どうでしょう" panels:@[panel, panel2,panel3] languageDirection:MYLanguageDirectionLeftToRight];
    [introductionView setBackgroundImage:[UIImage imageNamed:@"0315今度。.jpg"]];
    
    //デリゲートの指定。
    introductionView.delegate = self;
    //紹介ビューの表示。
    [introductionView showInView:self.view];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
