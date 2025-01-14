//
//  WelcomeView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/14.
//

import SwiftUI

struct WelcomeView: View {
    @State private var showNextView = false
    @State private var fadeOut = false
    
    var body: some View {
        Group {
            if showNextView {
                ContentView()
            } else {
                VStack(spacing: 20) {
                    Spacer()
                    
                    // 앱 로고 및 텍스트
                    VStack(spacing: 10) {
                        Image(systemName: "pills.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .opacity(fadeOut ? 0 : 1)
                            .animation(.easeInOut(duration: 1), value: fadeOut)
                        
                        Text("당신만의 개인 영양사, 비타지니!")
                            .font(.title)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.vitaText)
                            .opacity(fadeOut ? 0 : 1)
                            .animation(.easeInOut(duration: 1), value: fadeOut)
                    }
                    Spacer()
                }
                .padding()
                .background(Color.vitaBackground.ignoresSafeArea())
                .onAppear {
                    // 애니메이션 효과
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            fadeOut = true
                        }
                    }
                    
                    // 1초 타이머
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            showNextView = true
                        }
                    }
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
