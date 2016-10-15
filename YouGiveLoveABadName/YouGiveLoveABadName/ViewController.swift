//
//  ViewController.swift
//  YouGiveLoveABadName
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bonjovi: UIImageView!
    var bonjoviHeightConstraint40: NSLayoutConstraint!
    var bonjoviHeightConstraint100: NSLayoutConstraint!
    var bonjoviHeightConstraint35: NSLayoutConstraint!
    var bonjoviHeightConstraint45: NSLayoutConstraint!
    var bonjoviHeightConstraint105: NSLayoutConstraint!
    var bonjoviHeightConstraint95: NSLayoutConstraint!
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // image
        self.bonjovi.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 1.0).isActive = true
        self.bonjovi.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        self.bonjovi.translatesAutoresizingMaskIntoConstraints = false
        
        self.bonjoviHeightConstraint45 = self.bonjovi.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.45)
        self.bonjoviHeightConstraint40 = self.bonjovi.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
        self.bonjoviHeightConstraint35 = self.bonjovi.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.35)
        
        self.bonjoviHeightConstraint105 = self.bonjovi.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.05)
        self.bonjoviHeightConstraint100 = self.bonjovi.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 1.0)
        self.bonjoviHeightConstraint95 = self.bonjovi.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.95)
        
        self.bonjoviHeightConstraint40.isActive = true
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: .beginFromCurrentState, animations: {
            
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 2/10, animations: {
                self.bonjoviHeightConstraint40.isActive = false
                self.bonjoviHeightConstraint105.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 2/10, relativeDuration: 1/10, animations: {
                self.bonjoviHeightConstraint105.isActive = false
                self.bonjoviHeightConstraint95.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 3/10, relativeDuration: 1/8, animations: {
                self.bonjoviHeightConstraint95.isActive = false
                self.bonjoviHeightConstraint100.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 6/10, relativeDuration: 2/10, animations: {
                self.bonjoviHeightConstraint100.isActive = false
                self.bonjoviHeightConstraint35.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 8/10, relativeDuration: 1/10, animations: {
                self.bonjoviHeightConstraint35.isActive = false
                self.bonjoviHeightConstraint45.isActive = true
                self.view.layoutIfNeeded()
            })
            
            UIView.addKeyframe(withRelativeStartTime: 9/10, relativeDuration: 1/10, animations: {
                self.bonjoviHeightConstraint45.isActive = false
                self.bonjoviHeightConstraint40.isActive = true
                self.view.layoutIfNeeded()
            })
            
        })        
    }

}

