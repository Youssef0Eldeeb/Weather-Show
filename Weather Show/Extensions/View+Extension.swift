//
//  View+Extension.swift
//  Weather Show
//
//  Created by Youssef Eldeeb on 14/05/2023.
//

import Foundation
import SwiftUI

extension View{
    func cornerRedius(_ redius: CGFloat, corner: UIRectCorner) -> some View{
        clipShape(RoundedCorner(redius: redius, corner: corner))
    }
}

struct RoundedCorner: Shape{
    var redius: CGFloat = .infinity
    var corner: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: redius, height: redius))
        return Path(path.cgPath)
    }
    
}
