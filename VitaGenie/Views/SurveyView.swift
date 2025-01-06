//
//  SurveyView.swift
//  VitaGenie
//
//  Created by 유상민 on 2025/01/01.
//

import SwiftUI

struct SurveyView: View {
    @State private var currentQuestionIndex = 0
    @State private var answers: [String?] = Array(repeating: nil, count: 5) // 사용자의 답변 저장
    
    let questions: [SurveyQuestion] = [
        SurveyQuestion(questionText: "운동을 얼마나 자주 하나요?", options: ["매일", "주 1~2회", "거의 하지 않음"]),
        SurveyQuestion(questionText: "특별한 식단을 따르고 있나요?", options: ["예", "아니요"])
    ]
    
    var body: some View {
        VStack {
            // 진행 중인 설문 타이틀
            Text("설문 진행 중")
                .font(.title)
                .padding()
            
            // SF Symbols로 질문 아이콘 추가
            Image(systemName: "questionmark.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundColor(.blue)
            
            // 질문 텍스트와 선택지
            VStack {
                // 현재 질문 표시
                Text(questions[currentQuestionIndex].questionText)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()
                
                // 옵션 버튼 반복문으로 생성
                ForEach(questions[currentQuestionIndex].options, id: \.self) { option in
                    Button(action: {
                        answers[currentQuestionIndex] = option // 선택한 답변 저장
                    }) {
                        Text(option)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(answers[currentQuestionIndex] == option ? Color.blue : Color.gray.opacity(0.2))
                            .foregroundColor(.white)
                            .cornerRadius(12)
                    }
                    .padding(.vertical, 5)
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .shadow(radius: 10)
            
            // 이전 / 다음 버튼
            HStack {
                // 이전 버튼
                Button("이전") {
                    if currentQuestionIndex > 0 {
                        currentQuestionIndex -= 1
                    }
                }
                .disabled(currentQuestionIndex == 0)
                
                Spacer()
                
                // 다음 버튼
                Button(currentQuestionIndex == questions.count - 1 ? "완료" : "다음") {
                    if currentQuestionIndex < questions.count - 1 {
                        currentQuestionIndex += 1
                    } else {
                        print("설문 완료 : \(answers)") // 마지막 질문 완료 후 콘솔 출력
                    }
                }
                .disabled(answers[currentQuestionIndex] == nil) // 답변 선택 전까지 비활성화
            }
            .padding()
        }
        .padding()
        .background(Color(UIColor.systemGray6).edgesIgnoringSafeArea(.all))
    }
}

struct SurveyView_Previews: PreviewProvider {
    static var previews: some View {
        SurveyView()
    }
}
