//
//  SurveyQuestion.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/01.
//

import Foundation

// 설문 질문 데이터 모델 정의
struct SurveyQuestion: Identifiable {
    let id = UUID() // 질문 고유 ID 생성
    let questionText: String // 질문 텍스트
    let options: [String] // 답변 선택지
    var selectedAnswer: String? // 사용자가 선택한 답변 (옵셔널)
}
