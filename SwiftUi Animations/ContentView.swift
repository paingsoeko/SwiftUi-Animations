//
//  ContentView.swift
//  SwiftUi Animations
//
//  Created by Paing Soe Ko on 25/8/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()

            VStack {
            
                Text("Main Content View")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
