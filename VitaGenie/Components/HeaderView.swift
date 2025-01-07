//
//  HeaderView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/07.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
            HStack {
                Spacer() // 중앙 정렬을 위해 Spacer 추가
                
                HStack {
                    Image(systemName: "pills.fill")// 기본 로고 (SF Symbol 사용)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .foregroundColor(Color(hex: "#fd546a")) // HEX 컬러 적용
                    Text("VitaGenie")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                
                Spacer() // 중앙 정렬을 위해 Spacer 추가
            }
            .padding()
        }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
