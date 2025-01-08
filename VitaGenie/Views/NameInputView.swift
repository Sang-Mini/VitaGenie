//
//  NameInputView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/01.
//

import SwiftUI

struct NameInputView: View {
    @State private var userName: String = "" // 사용자 이름 상태 관리
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView()
            
            Text("이름을 입력해 주세요")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.vitaText)
                .padding(.bottom, 20)
            
            
            TextField("이름", text: $userName)
                .multilineTextAlignment(.center)
                .padding(.bottom, 8)
                .font(.system(size: 18))
                .foregroundColor(.vitaText)
                .overlay(
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.5)), // 그레이 선
                    alignment: .bottom
                )
                .padding(.horizontal, 20)
            
            Spacer()
            
            Button(action: {
                // 이름 입력 후 다음 단계로 진행 (현재는 Print 사용)
                print("사용자 이름 : \(userName)")
            }) {
                Text("Next")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(userName.isEmpty ? Color.vitaPink.opacity(0.3) : Color.vitaPink)
                    .cornerRadius(30)
                    .padding(.horizontal, 110)
            }
            .disabled(userName.isEmpty) // 이름이 비어 있으면 버튼 비활성화
            
            Spacer()
            Spacer()
        }
        .padding()
        .background(Color.vitaBackground.ignoresSafeArea())
        .navigationBarBackButtonHidden(true)
    }
}

struct NameInputView_Previews: PreviewProvider {
    static var previews: some View {
            NameInputView()
    }
}
