//
//  ViewController.swift
//  FilterBottomPopup
//
//  Created by Ahmed kamal on 9/29/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
// ahmed kamal

import UIKit
import BottomPopup

protocol RefreshScreen {
    
}
class FilterVC: BottomPopupViewController {

    var selected_Index : Int?
    
    var height: CGFloat?
    var Delegate : RefreshScreen!
   
          var topCornerRadius: CGFloat?
          var presentDuration: Double?
          var dismissDuration: Double?
          var shouldDismissInteractivelty: Bool?
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
   
    override func getPopupHeight() -> CGFloat {
           return height ?? CGFloat(450)
       }
       
       override func getPopupTopCornerRadius() -> CGFloat {
           return 30
       }
       
       override func getPopupPresentDuration() -> Double {
           return presentDuration ?? 1.0
       }
       
       override func getPopupDismissDuration() -> Double {
           return dismissDuration ?? 1.0
       }
       
       override func shouldPopupDismissInteractivelty() -> Bool {
           return shouldDismissInteractivelty ?? true
       }

    
   
    @IBAction func ActionBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
         }
    
    }


extension FilterVC: BottomPopupDelegate {
    func bottomPopupViewLoaded() {
        print("bottomPopupViewLoaded")
    }
    
    func bottomPopupWillAppear() {
        print("bottomPopupWillAppear")
    }
    
    func bottomPopupDidAppear() {
        print("bottomPopupDidAppear")
    }
    
    func bottomPopupWillDismiss() {
        print("bottomPopupWillDismiss")
    }
    
    func bottomPopupDidDismiss() {
        print("bottomPopupDidDismiss")
    }
    
    func bottomPopupDismissInteractionPercentChanged(from oldValue: CGFloat, to newValue: CGFloat) {
        print("bottomPopupDismissInteractionPercentChanged fromValue: \(oldValue) to: \(newValue)")
    }
}
