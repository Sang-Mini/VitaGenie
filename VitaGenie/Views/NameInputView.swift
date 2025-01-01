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
            Text("당신의 이름은 무엇입니까?")
                .font(.title)
                .padding(.top, 50)
            
            TextField("이름", text: $userName)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal, 20)
            
            Spacer()
            
            Button(action: {
                // 이름 입력 후 다음 단계로 진행 (현재는 Print 사용)
                print("사용자 이름 : \(userName)")
            }) {
                Text("다음")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(userName.isEmpty ? Color.gray : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
            }
            .disabled(userName.isEmpty) // 이름이 비어 있으면 버튼 비활성화
            
            Spacer()
        }
        .navigationTitle("이름 입력")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NameInputView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NameInputView()
        }
    }
}
