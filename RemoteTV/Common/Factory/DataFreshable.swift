//
//  DataFreshable.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import Foundation

@MainActor
class DataFreshable: ObservableObject {
    @Published var homeRefresh: Bool = false
}
