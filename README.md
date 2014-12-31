# VICMAImageView - Content Mode Animatable Image View

Change image view's content mode with your animation!

![demo.gif](http://i.imgur.com/yWSyuq3.gif)

## Usage

Use VICMAImageView like a UIImageView

```Objc
- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    VICMAImageView *imageView = [[VICMAImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:imageView];
}
```

Animate contentMode in animation block

```Objc
[UIView animateWithDuration:0.3
                     animations:^{
                         imageView.contentMode = UIViewContentModeScaleAspectFill;
                     }];
```

##License

VICMAImageView is available under the MIT license. See the LICENSE file for more info.