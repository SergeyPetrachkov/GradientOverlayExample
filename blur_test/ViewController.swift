//
//  ViewController.swift
//  blur_test
//
//  Created by Sergey Petrachkov on 27/11/2017.
//  Copyright © 2017 Sergey Petrachkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
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
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

