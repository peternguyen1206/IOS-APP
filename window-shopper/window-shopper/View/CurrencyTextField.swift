//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Macintosh on 11/22/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame:CGRect(x: 5, y: frame.size.height / 2 - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.9288943528, green: 0.9288943528, blue: 0.9288943528, alpha: 0.8023062928)
        currencyLabel.textAlignment = .center
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current 
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        textAlignment = .center
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2542273116)
        layer.cornerRadius = 5.0
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
