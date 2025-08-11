//
//  Clipped+.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import Foundation
import SwiftUI

extension View {
    var radius8: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 8))
    }
    
    var radius10: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
    var radius16: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    var radius20: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 20))
    }
    
    var radius24: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 24))
    }
    
    var radius32: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 32))
    }
    
    var radius100: some View {
        self.clipShape(RoundedRectangle(cornerRadius: 100))
    }
    
    func radius(topLeading: CGFloat, bottomLeading: CGFloat, bottomTrailing: CGFloat, topTrailing: CGFloat) -> some View {
        self.clipShape(
            .rect(topLeadingRadius: topLeading,
                  bottomLeadingRadius: bottomLeading,
                  bottomTrailingRadius: bottomTrailing,
                  topTrailingRadius: topTrailing)
        )
    }
    
    func radius(_ allCorners: CGFloat) -> some View {
        self.clipShape(
            .rect(topLeadingRadius: allCorners,
                  bottomLeadingRadius: allCorners,
                  bottomTrailingRadius: allCorners,
                  topTrailingRadius: allCorners)
        )
    }
}
