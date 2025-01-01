//
//  SurveyViewModel.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/01.
//

import Foundation

class SurveyViewModel: ObservableObject {
    // @Published를 사용하여 설문 질문 데이터 변경 시 UI 자동 업데이트
    @Published var questions: [SurveyQuestion]

    init() {
        // 초기 설문 질문 데이터를 설정
        self.questions = [
            SurveyQuestion(questionText: "운동을 얼마나 자주 하나요?", options: ["매일", "주 1~2회", "거의 하지 않음"]),
            SurveyQuestion(questionText: "특별한 식단을 따르나요?", options: ["예", "아니요"])
        ]
    }

    // 사용자가 선택한 답변을 저장하는 함수
    func selectAnswer(for questionID: UUID, answer: String) {
        // 선택된 질문의 인덱스를 찾은 뒤 답변 저장
        if let index = questions.firstIndex(where: { $0.id == questionID }) {
            questions[index].selectedAnswer = answer
        }
    }
}
