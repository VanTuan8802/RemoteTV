//
//  HomeView.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack {
            headerView
            Spacer()
            actionView

        }
        .ignoresSafeArea(.all)
        .padding(.horizontal, 20)
        .background(Color.color808080)
    }
    
    @MainActor @ViewBuilder
    private var headerView: some View {
        HStack {
            Button(action: {
                viewModel.isConnected.toggle()
            }, label: {
                Image(viewModel.isConnected ? R.image.connected : R.image.disconnected)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
            })
            
            Spacer()
            
            Button(action: {
                viewModel.isMuted.toggle()
            }, label: {
                Image(viewModel.isMuted ? R.image.mute : R.image.unmute)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 24, height: 24)
            })
        }
        .padding(.top, 60)
    }
    
    @MainActor @ViewBuilder
    private var actionView: some View {
        GeometryReader { geo in
            let totalWidth = geo.size.width - 16
            let sideWidth = totalWidth * 0.2
            let middleWidth = totalWidth * 0.6
            
            HStack(spacing: 8) {
                ItemActionView(
                    type: .moreAction,
                    textMain: "VOL",
                    imageTop: Image(systemName: "plus"),
                    actionTop: { },
                    imageBottom: Image(systemName: "minus"),
                    actionBottom: { }
                )
                .frame(width: sideWidth)

                VStack(spacing: 8) {
                    HStack(spacing: 8) {
                        ItemActionView(
                            type: .oneAction,
                            imageMain: Image(systemName: "plus"),
                            actionMain: { }
                        )
                        ItemActionView(
                            type: .oneAction,
                            imageMain: Image(systemName: "plus"),
                            actionMain: { }
                        )
                        ItemActionView(
                            type: .oneAction,
                            imageMain: Image(systemName: "plus"),
                            actionMain: { }
                        )
                    }
                    
                    HStack(spacing: 8) {
                        ItemActionView(
                            type: .oneAction,
                            imageMain: Image(systemName: "playpause.fill"),
                            actionMain: { }
                        )
                        ItemActionView(
                            type: .oneAction,
                            imageMain: Image(systemName: "house.fill"),
                            actionMain: { }
                        )
                    }
                }
                .frame(width: middleWidth)

                ItemActionView(
                    type: .moreAction,
                    textMain: "CH",
                    imageTop: Image(systemName: "chevron.up"),
                    actionTop: { },
                    imageBottom: Image(systemName: "chevron.down"),
                    actionBottom: { }
                )
                .frame(width: sideWidth)
            }
        }
        .frame(height: 120)
        .padding(.bottom, 60)
    }
}

#Preview {
    HomeView()
}
