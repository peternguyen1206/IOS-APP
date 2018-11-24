//
//  ViewController.swift
//  window-shopper
//
//  Created by Macintosh on 11/22/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTF: CurrencyTextField!
    @IBOutlet weak var itemPriceTF: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTF.inputAccessoryView = calcButton
        itemPriceTF.inputAccessoryView = calcButton
    }

    @objc func calculate() {
        if let wageTf = wageTF.text, let itemPriceTf = itemPriceTF.text {
            if let wage = Double(wageTf), let price = Double(itemPriceTf) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearBtnPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        wageTF.text = " "
        itemPriceTF.text = " "
        
    }
}

