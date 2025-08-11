//
//  RemoteTVApp.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import SwiftUI
import SwiftData
import Factory

@main
struct RemoteTVApp: App {
    @Environment(\.scenePhase) var scenePhase
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @InjectedObject(\.app) internal var app: AppManager
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.light)
        }
    }
}
