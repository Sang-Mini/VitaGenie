//
//  ContentView.swift
//  VitaGenie
//
//  Created by 유상민 on 2024/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationLink(destination: NameInputView()) {
            Text("설문 시작하기")
                .font(.title)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
        .navigationTitle("VitaGenie")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
