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
    
    override func viewWillAppear(_ animated: Bool) {
       self.viewWidthConstraint.constant = 0.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func slideinView(_ sender: Any) {
        
        UIView.animate(withDuration: 10.0, delay: 2.0, options: .curveEaseInOut, animations: {
            self.viewWidthConstraint.constant = 99.0
            }, completion:nil)
    
    }

}
