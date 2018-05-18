//
//  ViewController.swift
//  Popover
//
//  Created by Steve Lipton on 4/27/18.
//  Copyright © 2018 Steve Lipton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func selectPumpkinPie(_ sender: UIBarButtonItem) {
        let vc = PieViewController()
        vc.imageView.image = #imageLiteral(resourceName: "pumpkin")
        vc.sourceTraitCollection = traitCollection
        vc.modalPresentationStyle = .popover
        present(vc, animated: true, completion: nil)
        vc.popoverPresentationController?.barButtonItem = sender
    }
    
    @IBAction func selectPecanPie(_ sender: UIButton) {
        let vc = PieViewController()
        vc.imageView.image = #imageLiteral(resourceName: "pecan")
        vc.sourceTraitCollection = traitCollection
        vc.modalPresentationStyle = .popover
        present(vc, animated: true, completion: nil)
        vc.popoverPresentationController?.sourceView = sender
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

