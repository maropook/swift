//
//  ViewController.swift
//  podTestApp
//
//  Created by 長谷川樹 on 2021/08/16.
//
import PKHUD
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        HUD.show(.progress, onView: view)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            
            HUD.hide{(_) in
                HUD.flash(.success, onView: self.view)
            }
        }
    }
    
    
}
