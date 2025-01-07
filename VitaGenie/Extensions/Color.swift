//
//  Color.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/07.
//

import SwiftUI

extension Color {
    init(hex: String) {
            var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

            var rgb: UInt64 = 0
            Scanner(string: hexSanitized).scanHexInt64(&rgb)

            let red = Double((rgb >> 16) & 0xFF) / 255.0
            let green = Double((rgb >> 8) & 0xFF) / 255.0
            let blue = Double(rgb & 0xFF) / 255.0

            self.init(.sRGB, red: red, green: green, blue: blue, opacity: 1.0)
        }
}
