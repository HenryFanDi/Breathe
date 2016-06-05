//
//  MainViewController.swift
//  Breathe
//
//  Created by HenryFan on 5/6/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var breathView: UIView!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupMainViewController()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: Private
  
  private func setupMainViewController() {
    setupBreathView()
  }
  
  private func setupBreathView() {
    breathView.backgroundColor = UIColor.whiteColor()
    breathView.alpha = 0.5
    breathView.layer.cornerRadius = CGRectGetHeight(breathView.frame) / 2.0
    
    unowned let unownedSelf = self
    UIView.transitionWithView(breathView,
                              duration: 2.0,
                              options: [.Autoreverse, .Repeat],
                              animations:
    {
      unownedSelf.breathView.alpha = 0.9
    }) { (finished) in
      unownedSelf.breathView.alpha = 0.5
    }
  }
  
}
