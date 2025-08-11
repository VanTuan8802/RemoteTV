//
//  NavigationType.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import Foundation
import SwiftUI

enum NavigationType: Equatable {
    case push
    case fullScreenCover
    case sheet(detents: Set<PresentationDetent>? = nil)
    
    var detents: Set<PresentationDetent>? {
        if case .sheet(let detents) = self {
            return detents
        }
        return nil
    }
}

enum PopToRootType {
    enum ModalType {
        case count(Int)
        case all
    }
    
    case modal(ModalType)
    case keepModal
    case root
}
