# GradientOverlayExample
If you want to place gradient view over your another view (UILabel e.g.) you can try the codes provided in ViewController viewDidLoad method.

```ruby
let gradientView = UIView(frame: CGRect(x: 0, y: self.textLabel.frame.maxY - 100, width: 375, height: 100))
self.view.addSubview(gradientView)
let gradientLayer: CAGradientLayer = CAGradientLayer()
gradientLayer.frame = gradientView.bounds
// colors of your overlay. [0] - start color, [1] - end color
gradientLayer.colors = [UIColor(white: 1, alpha: 0.95).cgColor, UIColor(white: 1, alpha: 0.6).cgColor]
gradientLayer.startPoint = CGPoint(x: 0, y: 0)
gradientLayer.endPoint = CGPoint(x: 0, y: 1)
gradientView.layer.addSublayer(gradientLayer)
// rotate view 180 degrees
gradientView.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
```


see the result below:

![](https://78.media.tumblr.com/aec58858027b393d0a65c4d2e698e7ae/tumblr_p044i5ELgV1wyutyko1_540.png)
