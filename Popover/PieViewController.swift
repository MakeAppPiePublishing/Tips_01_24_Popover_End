//
//  PieViewController.swift
//  popoverPlay
//
//  Created by Steven Lipton on 4/27/18.
//  Copyright © 2018 Steven Lipton. All rights reserved.
//

import UIKit

class PieViewController: UIViewController {
    
    var imageView = UIImageView()
    var doneButton = UIButton()
    var sourceTraitCollection = UITraitCollection()
    
    @IBAction func didPressDone(sender:UIButton){
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // image view configuration
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        //done button configuration
        doneButton.setTitle("Done", for: .normal)
        doneButton.titleLabel?.textColor = UIColor(named:"Color 3")
        doneButton.backgroundColor = UIColor(named:"Color 4")
        doneButton.addTarget(self, action: #selector(didPressDone(sender:)) , for: .touchUpInside)
        view.addSubview(doneButton)
        doneButton.translatesAutoresizingMaskIntoConstraints = false
        //Hide or show dismissal button
        doneButton.isHidden = true
        
        
        // Layout
        var constraints = [NSLayoutConstraint]()
        // imageView.height = imageview.width * 4/3
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .height, relatedBy: .equal, toItem: imageView, attribute: .width, multiplier: 4/3, constant: 0.0)]
        // imageview.width = view.width * 8/9
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 8/9, constant: 0.0)]
        // imageview.centerX = view.centerX
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0)]
        // imageView.centerY = view.centerY
        constraints += [NSLayoutConstraint.init(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)]
        // doneButton.bottom = margin.bottom + 10
        constraints += [NSLayoutConstraint.init(item: doneButton, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1.0, constant: 20.0)]
        // doneButton.centerX = view.centerX
        constraints += [NSLayoutConstraint.init(item: doneButton, attribute: .centerX, relatedBy: .equal, toItem:view, attribute: .centerX, multiplier: 1.0, constant: 0.0)]
        // doneButton.width = imageView.width * 7/9
        constraints += [NSLayoutConstraint.init(item: doneButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 7/9, constant: 0.0)]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
}
