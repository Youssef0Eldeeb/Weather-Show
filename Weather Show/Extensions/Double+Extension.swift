//
//  Double+Extension.swift
//  Weather Show
//
//  Created by Youssef Eldeeb on 14/05/2023.
//

import Foundation

extension Double{
    func roundDouble() -> String{
        return String(format: "%.0f", self)
    }
}
