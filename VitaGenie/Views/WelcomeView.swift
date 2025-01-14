//
//  WelcomeView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/14.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            
            // 앱 로고 및 텍스트
            VStack(spacing: 10) {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                
                Text("당신만의 개인 영양사, 비타지니!")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.vitaText)
            }
            
            Spacer()
            
            
        }
        .padding()
        .background(Color.vitaBackground.ignoresSafeArea())
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
