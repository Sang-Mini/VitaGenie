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
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(hex: "#fd546a")) // HEX 컬러 적용
                    Text("VitaGenie")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                }
                
                Spacer() // 중앙 정렬을 위해 Spacer 추가
            }
            .padding(.top, 8)
            .padding(.bottom, 8)
        
            // 그레이 색상의 구분선 추가
            Rectangle()
                    .frame(height: 2)
                    .foregroundColor(.gray.opacity(0.3))
                    .shadow(color: .gray, radius: 5, x: 0, y: 3)
        }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
