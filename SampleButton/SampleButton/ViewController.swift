//
//  ViewController.swift
//  SampleButton
//
//  Created by 長谷川樹 on 2021/08/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func catButton(_ sender: Any) {
        label.text = "ニャー"
    }
    
    
    @IBAction func flogButton(_ sender: Any) {
        label.text = "ゲロゲロ"
    }
    
    
    @IBAction func dogButton(_ sender: Any) {
        label.text = "ワン"
    }
    
    
    
    
}

