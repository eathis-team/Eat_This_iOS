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
    
  static var white: Color {
    return UIColor(white: 1.0, alpha: 1.0).color
  }

  static var orangeyYellow: Color {
    return UIColor(red: 248.0 / 255.0, green: 170.0 / 255.0, blue: 32.0 / 255.0, alpha: 1.0).color
  }

  static var veryLightPink: Color {
    return UIColor(white: 221.0 / 255.0, alpha: 1.0).color
  }

  static var brownGrey: Color {
    return UIColor(white: 153.0 / 255.0, alpha: 1.0).color
  }

  static var black: Color {
    return UIColor(white: 51.0 / 255.0, alpha: 1.0).color
  }

  static var brownishGrey: Color {
    return UIColor(white: 102.0 / 255.0, alpha: 1.0).color
  }

  static var orange: Color {
    return UIColor(red: 247.0 / 255.0, green: 109.0 / 255.0, blue: 22.0 / 255.0, alpha: 1.0).color
  }

  static var whiteTwo: Color {
    return UIColor(white: 247.0 / 255.0, alpha: 1.0).color
  }

}
