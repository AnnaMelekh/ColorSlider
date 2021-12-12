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
    
    var red: CGFloat = 0.0
    var green: CGFloat = 0.0
    var blue: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        colorView.backgroundColor = .systemGray
        
        valueRed.text = String(sliderRedValue.value)
        valueBlue.text = String(sliderBlueValue.value)
        valueGreen.text = String(sliderGreenValue.value)
    }

    @IBAction func sliderRed() {
        let roundedValueRed = round(sliderRedValue.value * 100) / 100
        valueRed.text = String(roundedValueRed)
        
        red = CGFloat(sliderRedValue.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }

    @IBAction func sliderGreen() {
        let roundedValueGreen = round(sliderGreenValue.value * 100) / 100
        valueGreen.text = String(roundedValueGreen)
        
        green = CGFloat(sliderGreenValue.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)

    }
    
    @IBAction func sliderBlue() {
        let roundedValueBlue = round(sliderBlueValue.value * 100) / 100
        valueBlue.text = String(roundedValueBlue)
        
        blue = CGFloat(sliderBlueValue.value)
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)


    }

}
