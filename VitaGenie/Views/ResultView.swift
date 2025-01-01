//
//  ResultView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/01.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
            // 추천 결과를 표시하는 텍스트
            Text("추천 결과를 여기에 표시합니다.")
                .font(.title) // 텍스트 스타일 설정
                .padding() // 텍스트 주변 여백 추가
                .navigationTitle("추천 결과") // 네비게이션 바 제목 설정
        }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
