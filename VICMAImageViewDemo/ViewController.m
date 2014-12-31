//
//  ViewController.m
//  VICMAImageViewDemo
//
//  Created by Vito on 12/31/14.
//  Copyright (c) 2014 Vito. All rights reserved.
//

#import "ViewController.h"
#import "VICMAImageView.h"

@interface ViewController ()

@property (strong, nonatomic) VICMAImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *frameTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    VICMAImageView *imageView = [[VICMAImageView alloc] initWithImage:image];
    imageView.frame = CGRectFromString(self.frameTextField.text);
    imageView.backgroundColor = [UIColor lightGrayColor];
    [self.view insertSubview:imageView atIndex:0];
    self.imageView = imageView;
}

- (void)animateImageViewWithContentMode:(UIViewContentMode)contentMode
{
    CGRect frame = CGRectFromString(self.frameTextField.text);
    [UIView animateWithDuration:0.3
                          delay:0
         usingSpringWithDamping:0.9
          initialSpringVelocity:1.0
                        options:UIViewAnimationOptionCurveEaseInOut
                     animations:^{
                         self.imageView.frame = frame;
                         self.imageView.contentMode = contentMode;
                     } completion:nil];
}

- (IBAction)randomFrameAction:(id)sender {
    CGFloat x = arc4random_uniform(20) + 10;
    CGFloat y = arc4random_uniform(50) + 10;
    CGFloat w = arc4random_uniform(200) + 100;
    CGFloat h = arc4random_uniform(350) + 50;
    
    CGRect frame = CGRectMake(x, y, w, h);
    NSString *text = NSStringFromCGRect(frame);
    self.frameTextField.text = text;
    
    //    [self animateImageViewWithContentMode:self.imageView.contentMode];
}

- (IBAction)toScaleAspectFitAction:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeScaleAspectFit];
}
- (IBAction)toScaleAspectFillAction:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeScaleAspectFill];
}
- (IBAction)toScaleToFillAction:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeScaleToFill];
}
- (IBAction)toRedraw:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeRedraw];
}
- (IBAction)toTopLeft:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeTopLeft];
}
- (IBAction)toLeft:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeLeft];
}
- (IBAction)toBottomLeft:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeBottomLeft];
}
- (IBAction)toTop:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeTop];
}
- (IBAction)toCenter:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeCenter];
}
- (IBAction)toBottom:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeBottom];
}
- (IBAction)toTopRight:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeTopRight];
}
- (IBAction)toRight:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeRight];
}
- (IBAction)toBottomRight:(id)sender {
    [self animateImageViewWithContentMode:UIViewContentModeBottomRight];
}

@end
