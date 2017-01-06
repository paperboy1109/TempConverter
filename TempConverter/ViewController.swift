//
//  ViewController.swift
//  TempConverter
//
//  Created by Daniel J Janiak on 1/4/17.
//  Copyright © 2017 redwoodempiredev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    var gradientLayer: CAGradientLayer!
    
    // MARK: - Outlets
    
    @IBOutlet var textField: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var conversionCountLabel: UILabel!
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.view.backgroundColor = UIColor(red: 255/255, green: 85/255, blue: 61/255, alpha: 0.8)
        
        let numConversionsObject = UserDefaults.standard.object(forKey: "")
        
        if let numConversions = numConversionsObject as? Double {
            conversionCountLabel.text = String(numConversions)
        }
        
        print("numConversionsObject is: \(numConversionsObject)")
        
        if numConversionsObject == nil {
            conversionCountLabel.text = "0"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        createGradientLayer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Actions
    
    @IBAction func convertTapped(_ sender: Any) {
        
        if let result = textField.text {
            
            if result == "" {
                return
            } else {
                if let num = Double(result) {
                    let output = num * (9/5) + 32
                    label.text = String(output)
                }
            }
            
        }
        
        //UserDefaults.standard.set(<#T##value: Double##Double#>, forKey: "conversionCounter")
        
    }
    
    // MARK: - Helpers
    
    func createGradientLayer() {
        
        gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = self.view.bounds
        
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        
        self.view.layer.addSublayer(gradientLayer)
    }
    
    
    
    
}

