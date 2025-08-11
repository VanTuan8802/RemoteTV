//
//  NavigationRoot.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import Foundation
import SwiftUI

struct NavigationRoot: View {
    let destination: Destination
    @StateObject var navigation: Navigation
    
    var body: some View {
        NavigationView(destinationWrapper: DestinationWrapper(destination: destination, navigationType: nil),
                       navigationController: navigation.rootNavigationController)
        .environmentObject(navigation)
    }
}
