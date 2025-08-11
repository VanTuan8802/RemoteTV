//
//  AppManager.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import Foundation
import Foundation

@MainActor
class AppManager: ObservableObject {

    /// Navi
    @Published var navi: Navigation = Navigation()

    /// State
    @Published var isInBackground: Bool = false
}
