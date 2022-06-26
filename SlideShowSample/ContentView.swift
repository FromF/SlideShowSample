//
//  ContentView.swift
//  SlideShowSample
//
//  Created by 藤治仁 on 2022/06/26.
//

import SwiftUI
import Combine

struct ContentView: View {
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    @State private var totalIndex = 3

    var body: some View {
        TabView(selection: $currentIndex) {
            ZStack {
                Color.red
                VStack {
                    Text("1")
                }
            }
            .tag(0)
            
            ZStack {
                Color.blue
                VStack {
                    Text("2")
                }
            }
            .tag(1)
            
            ZStack {
                Color.yellow
                VStack {
                    Text("3")
                }
            }
            .tag(2)
        } //TabViewここまで
        .tabViewStyle(.page)
        .animation(.spring())
        .onReceive(self.timer) { _ in
            self.currentIndex = (self.currentIndex + 1) % self.totalIndex
        }
        .onChange(of: self.currentIndex) { index in
            print("change currentIndex:\(index)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
