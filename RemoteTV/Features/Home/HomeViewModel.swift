//
//  HomeViewModel.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import SwiftUI

enum TouchpadMode: Equatable {
    case directional
    case touchPad
}

final class HomeViewModel: ObservableObject {
    @Published var isConnected: Bool = false
    @Published var isMuted: Bool = false
    @Published var mode: TouchpadMode = .directional

    init() {
        
    }
}
