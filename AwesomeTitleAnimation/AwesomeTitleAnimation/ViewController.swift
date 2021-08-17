//
//  ViewController.swift
//  AwesomeTitleAnimation
//
//  Created by 長谷川樹 on 2021/08/17.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextView!
    @IBOutlet weak var titleLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabelRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var bodyTextViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var bodyTextViewRightConstraint: NSLayoutConstraint!
    
    override func loadView() {
        super.loadView()
        titleLabelTopConstraint.constant -= 250
        titleLabel.alpha = 0
        bodyTextViewTopConstraint.constant -= 300
        bodyTextView.alpha = 0
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAnimation()

    }
    
    private func showAnimation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.9, options: [], animations: {
                self.titleLabelTopConstraint.constant += 250
                self.titleLabel.alpha = 1
                self.view.layoutIfNeeded()
                
            }) { (_) in
                
                UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.9, options: [], animations: {
                    self.bodyTextViewTopConstraint.constant += 300
                    self.bodyTextView.alpha = 1
                    self.view.layoutIfNeeded()
                   
                }) { (_) in
                    self.dismissAnimation()
                }
                
            }
            
        }
        

    }
    
    private func dismissAnimation() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.9, options: [], animations: {
                self.titleLabelRightConstraint.constant -= 200
                self.titleLabel.alpha = 0
                self.view.layoutIfNeeded()
                
            }) { (_) in
                
                UIView.animate(withDuration: 1.2, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0.9, options: [], animations: {
                    self.bodyTextViewRightConstraint.constant -= 200
                    self.bodyTextView.alpha = 0
                    self.view.layoutIfNeeded()
                   
                })
                
            }
            
        }
        
        
    }


}

