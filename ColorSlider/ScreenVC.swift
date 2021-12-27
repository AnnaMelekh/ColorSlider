//
//  ScreenVC.swift
//  ColorSlider
//
//  Created by Анна Мелехина on 26.12.2021.
//  Copyright © 2021 Anna Melekhina. All rights reserved.
//

import UIKit

protocol ColorSetVCDelegate {
    func setBackgroundColor()
}

class ScreenVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
    

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let colorSetVC = navigationVC.topViewController as? ColorSetVC else { return }
        colorSetVC.delegate = self
    }
    
    

//    @IBAction func settingsButton() {
//
//    }
    
}

extension ScreenVC: ColorSetVCDelegate {
    func setBackgroundColor() {
        <#code#>
    }
    
    
//    func setBackgroundColor(red: CGFloat, green: CGFloat, blue: CGFloat) {}
     
    
}



