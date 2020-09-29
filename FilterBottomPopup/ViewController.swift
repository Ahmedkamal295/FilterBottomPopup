//
//  ViewController.swift
//  FilterBottomPopup
//
//  Created by Ahmed kamal on 9/29/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit
import BottomPopup
class ViewController: UIViewController, RefreshScreen, BottomPopupDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func ActionFilter(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let popupVC = storyboard.instantiateViewController(withIdentifier: "FilterVC") as? FilterVC else { return }
                             
                      
               popupVC.height = self.view.frame.height - 200
                                 popupVC.topCornerRadius = 8
                                 popupVC.presentDuration = 1
                                 popupVC.dismissDuration = 1
                                 popupVC.popupDelegate = self
             
               popupVC.Delegate = self
               self.present(popupVC, animated: true, completion: nil)
    }
    
}

