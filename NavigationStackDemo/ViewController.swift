//
//  ViewController.swift
//  NavigationStackDemo
//
//  Created by Alex K. on 26/02/16.
//  Copyright © 2016 Alex K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func showHandler(sender: AnyObject) {
    if let navigationController = navigationController as? NavigationStack {
      navigationController.showControllers()
    }
  }

}

