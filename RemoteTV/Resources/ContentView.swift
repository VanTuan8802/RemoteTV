//
//  ContentView.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import SwiftUI
import SwiftData
import Factory

struct ContentView: View {
    @StateObject private var homeNavi = Navigation()

    @InjectedObject(\.app) private var app: AppManager
    
    var body: some View {
            NavigationRoot(destination: .home,
                           navigation: homeNavi)
            .onAppear {
                app.navi = homeNavi
            }
            .toolbar(.hidden, for: .tabBar)
        }
}

#Preview {
    ContentView()
}
