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
  
  fileprivate func setupMainViewController() {
    setupBreathView()
  }
  
  fileprivate func setupBreathView() {
    breathView.backgroundColor = UIColor.white
    breathView.alpha = 0.5
    breathView.layer.cornerRadius = breathView.frame.height / 2.0
    
    unowned let unownedSelf = self
    UIView.transition(with: breathView,
                              duration: 2.0,
                              options: [.autoreverse, .repeat],
                              animations:
    {
      unownedSelf.breathView.alpha = 0.9
    }) { (finished) in
      unownedSelf.breathView.alpha = 0.5
    }
  }
  
}
