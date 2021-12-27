//
//  ViewController.swift
//  ColorSlider
//
//  Created by Анна Мелехина on 12.12.2021.
//  Copyright © 2021 Anna Melekhina. All rights reserved.
//

import UIKit

class ColorSetVC: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var valueRed: UILabel!
    @IBOutlet var valueGreen: UILabel!
    @IBOutlet var valueBlue: UILabel!
    
    @IBOutlet var sliderRedValue: UISlider!
    @IBOutlet var sliderGreenValue: UISlider!
    @IBOutlet var sliderBlueValue: UISlider!
    
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    var delegate: ColorSetVCDelegate!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        redTextField.text = String(sliderRedValue.value)
        greenTextField.text = String(sliderGreenValue.value)
        blueTextField.text = String(sliderBlueValue.value)
        
        valueRed.text = String(sliderRedValue.value)
        valueBlue.text = String(sliderBlueValue.value)
        valueGreen.text = String(sliderGreenValue.value)
        
        setColor()
    }

    @IBAction func sliderRed() {
        let roundedValueRed = round(sliderRedValue.value * 100) / 100
        valueRed.text = String(roundedValueRed)
        setColor()
    }

    @IBAction func sliderGreen() {
        let roundedValueGreen = round(sliderGreenValue.value * 100) / 100
        valueGreen.text = String(roundedValueGreen)
        setColor()
        
    }
    
    @IBAction func sliderBlue() {
        let roundedValueBlue = round(sliderBlueValue.value * 100) / 100
        valueBlue.text = String(roundedValueBlue)
        setColor()
    }

    @IBAction func doneButtonPressed() {
//        delegate.setBackgroundColor (
//            red: CGFloat(sliderRedValue.value),
//            green: CGFloat(sliderRedValue.value),
//            blue: CGFloat(sliderRedValue.value)
//            )
        dismiss(animated: true)
        
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(sliderRedValue.value),
            green: CGFloat(sliderGreenValue.value),
            blue: CGFloat(sliderBlueValue.value),
            alpha: 1.0
            )
        }
}

 

//extension ColorSetVC {
//    private func showAlert(title: String, message: String) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "Ok", style: .default)
//        alert.addAction(okAction)
//        present (alert, animated: true)
//    }
//}

