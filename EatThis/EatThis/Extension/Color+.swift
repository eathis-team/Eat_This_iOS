//
//  Color+.swift
//  EatThis
//
//  Created by 김선우 on 3/2/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI

private extension UIColor {
    var color: Color { .init(self) }
}

extension Color {
    
    static let light1 = Color(white: 1.0)
    static let light2 = Color(white: 247.0 / 255.0)
    static let light3 = Color(white: 221.0 / 255.0)
    
    static let dark1 = Color(white: 51.0 / 255.0)
    static let dark2 = Color(white: 102.0 / 255.0)
    static let dark3 = Color(white: 153.0 / 255.0)
    
    static let orange1 = Color(red: 247.0 / 255.0, green: 109.0 / 255.0, blue: 22.0 / 255.0)
    static let orange2 = Color(red: 248.0 / 255.0, green: 170.0 / 255.0, blue: 32.0 / 255.0)
    
    static let overlay = Color(red: 141.0 / 255.0, green: 118.0 / 255.0, blue: 41.0 / 255.0).opacity(0.16)
    
    
    
    
    
}
