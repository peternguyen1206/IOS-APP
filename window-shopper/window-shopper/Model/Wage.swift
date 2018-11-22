//
//  Wage.swift
//  window-shopper
//
//  Created by Macintosh on 11/22/18.
//  Copyright © 2018 Macintosh. All rights reserved.
//
// Using to test your project
import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
