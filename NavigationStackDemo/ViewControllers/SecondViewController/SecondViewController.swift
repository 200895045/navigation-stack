//
//  SecondViewController.swift
//  NavigationStackDemo
//
//  Created by Alex K. on 29/02/16.
//  Copyright © 2016 Alex K. All rights reserved.
//

import UIKit

class SecondViewController: UITableViewController {
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    if let navigationController = navigationController {
      navigationController.navigationBar.barTintColor = UIColor(red:0.61, green:0.86, blue:0.87, alpha:1)
    }
  }


  @IBAction func backHandler(sender: AnyObject) {
    navigationController?.popViewControllerAnimated(true)
  }
  
  @IBAction func showHandler(sender: AnyObject) {
    
    guard let navigationController = navigationController as? NavigationStack else {
      return
    }
    
    navigationController.showControllers()
    
  }
  
  override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    performSegueWithIdentifier("push", sender: nil)
  }

}
