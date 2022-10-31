//
//  ViewController.swift
//  UIKitApp
//
//  Created by Egor Ukolov on 31.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        mainLabel.text = ""
        mainLabel.font = mainLabel.font.withSize(35)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        
        // Segmented control
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
    }

    @IBAction func chooseSegment() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The first segment is selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The second segment is selected"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "The third segment is selected"
            mainLabel.textColor = .blue
        default: break
        }
    }
    
}

