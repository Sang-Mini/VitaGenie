//
//  ContentView.swift
//  VitaGenie
//
//  Created by 유상민 on 2024/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                HeaderView()
                
                Spacer()
                
                Image(systemName: "person.circle") // Persona 스타일의 로고
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                
                Text("당신만을 위한 맞춤형 영양제 추천")
                    .font(.title)
                    .foregroundColor(.vitaText)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                
                NavigationLink(destination: NameInputView()) {
                    Text("추천받기")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.vitaPink)
                        .cornerRadius(30)
                        .padding(.horizontal)
                }
                Spacer()
            }
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
