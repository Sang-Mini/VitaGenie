//
//  SurveyView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/01.
//

import SwiftUI

struct SurveyView: View {
    // ViewModel을 StateObject로 초기화하여 설문 데이터 관리
    @StateObject private var viewModel = SurveyViewModel()
    
    var body: some View {
            // 설문 질문을 리스트로 표시
            List(viewModel.questions) { question in
                VStack(alignment: .leading, spacing: 10) {
                    // 질문 텍스트 표시
                    Text(question.questionText)
                        .font(.headline) // 텍스트 스타일 설정
                    
                    // 질문에 대한 선택지를 버튼으로 표시
                    ForEach(question.options, id: \.self) { option in
                        Button(option) {
                            // 사용자가 선택한 답변을 ViewModel에 저장
                            viewModel.selectAnswer(for: question.id, answer: option)
                        }
                        .padding() // 버튼 주변 여백 추가
                        .background(Color.gray.opacity(0.2)) // 버튼 배경 설정
                        .cornerRadius(8) // 버튼 모서리를 둥글게 설정
                    }
                }
            }
            .navigationTitle("설문 진행") // 네비게이션 바 제목 설정
            .toolbar {
                // 설문 완료 후 결과 화면으로 이동하는 네비게이션 링크
                NavigationLink(destination: ResultView()) {
                    Text("결과 보기") // 버튼 텍스트
                }
            }
        }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
