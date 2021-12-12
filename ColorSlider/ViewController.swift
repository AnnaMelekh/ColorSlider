//
//  ViewController.swift
//  ColorSlider
//
//  Created by Анна Мелехина on 12.12.2021.
//  Copyright © 2021 Anna Melekhina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var valueRed: UILabel!
    @IBOutlet var valueGreen: UILabel!
    @IBOutlet var valueBlue: UILabel!
    
    @IBOutlet var sliderRedValue: UISlider!
    @IBOutlet var sliderGreenValue: UISlider!
    @IBOutlet var sliderBlueValue: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        valueRed.text = String(sliderRedValue.value)
        valueBlue.text = String(sliderBlueValue.value)
        valueGreen.text = String(sliderGreenValue.value)
        
        
        
        
    }

    @IBAction func sliderRed() {
        valueRed.text = String(sliderRedValue.value)
    }

    @IBAction func sliderGreen() {
        valueGreen.text = String(sliderGreenValue.value)
    }
    
    @IBAction func sliderBlue() {
        valueBlue.text = String(sliderBlueValue.value)
    }
    
}

