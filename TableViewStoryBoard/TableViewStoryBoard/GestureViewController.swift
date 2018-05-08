//
//  GestureViewController.swift
//  TableViewStoryBoard
//
//  Created by Satabdi Das on 04/05/18.
//  Copyright © 2018 Satabdi Das. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

   
    @IBOutlet weak var viewToAnimate: UIView!
   @IBOutlet weak var viewWidthConstraint:NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
       self.viewToAnimate.layoutIfNeeded()
        self.viewWidthConstraint.constant = 0.0
       //let deltaX:CGFloat = 70.0
       //  self.viewToAnimate.center = CGPoint(x: self.viewToAnimate.center.x - deltaX, y: self.viewToAnimate.center.y)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slideinView(_ sender: Any) {
        //UIView.setAnimationsEnabled(true)
        self.viewWidthConstraint.constant = 99.0
        UIView.animate(withDuration: 0.05, delay: 0.0, options: .curveEaseIn, animations: {
            
         self.view.layoutIfNeeded()
            }, completion:nil)
    
    }

}
