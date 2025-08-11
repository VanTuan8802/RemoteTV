//
//  HomeViewModel.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import SwiftUI

final class HomeViewModel: ObservableObject {
    @Published var isConnected: Bool = false
    @Published var isMuted: Bool = false
    
    init() {
        
    }
}
