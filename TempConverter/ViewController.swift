//
//  ViewController.swift
//  TempConverter
//
//  Created by Daniel J Janiak on 1/4/17.
//  Copyright © 2017 redwoodempiredev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet var textField: UITextField!
    
    @IBOutlet var label: UILabel!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    @IBAction func convertTapped(_ sender: Any) {
    }
    


}

