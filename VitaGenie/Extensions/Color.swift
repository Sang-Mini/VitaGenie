//
//  Color.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/07.
//

import SwiftUI

extension Color {
    static let vitaGreen = Color(hex: "#34C759")
    static let vitaBlue = Color(hex: "#3498DB")
    static let vitaOrange = Color(hex: "#FFA500")
    static let vitaMint = Color(hex: "#A3E4D7")
    static let vitaYellow = Color(hex: "#F4D03F")
    static let vitaRed = Color(hex: "#E74C3C")
    static let vitaPink = Color(hex: "#fd546a")
    static let vitaBackground = Color(hex: "#F9F9F9")
    static let vitaText = Color(hex: "#2C3E50")
    static let vitaSubtitle = Color(hex: "#BDC3C7")
    
    // HEX 코드를 사용하는 이니셜라이저(생성자) 추가
    init(hex: String) {
            let scanner = Scanner(string: hex)
            _ = scanner.scanString("#") // '#' 제거
            var rgbValue: UInt64 = 0
            scanner.scanHexInt64(&rgbValue)

            let red = Double((rgbValue >> 16) & 0xFF) / 255.0
            let green = Double((rgbValue >> 8) & 0xFF) / 255.0
            let blue = Double(rgbValue & 0xFF) / 255.0

            self.init(red: red, green: green, blue: blue)
        }
}
