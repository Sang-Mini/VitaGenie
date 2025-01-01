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
            Text("Welcom to VitaGenie!")
                .font(.title)
            Button("Start Survey") {
                print("Survey Started")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
