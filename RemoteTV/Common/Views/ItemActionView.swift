//
//  ItemActionView.swift
//  RemoteTV
//
//  Created by VanTuan on 11/8/25.
//

import SwiftUI

enum ActionType {
    case oneAction
    case moreAction
}

struct ItemActionView: View {
    var type: ActionType
    var imageMain: Image?
    var textMain: String?
    var actionMain: (() -> Void)?
    var imageTop: Image?
    var actionTop: (() -> Void)?
    var imageBottom: Image?
    var actionBottom: (() -> Void)?
    
    init(type: ActionType, imageMain: Image? = nil, textMain: String? = nil, actionMain: (() -> Void)? = nil, imageTop: Image? = nil, actionTop: (() -> Void)? = nil, imageBottom: Image? = nil, actionBottom: (() -> Void)? = nil) {
        self.type = type
        self.imageMain = imageMain
        self.textMain = textMain
        self.actionMain = actionMain
        self.imageTop = imageTop
        self.actionTop = actionTop
        self.imageBottom = imageBottom
        self.actionBottom = actionBottom
    }
    
    var body: some View {
        VStack(spacing: 16) {
            if type == .oneAction {
                if let img = imageMain,
                let actionMain = actionMain {
                    actionButton(image: img, action: actionMain)
                }
            }
            
            if type == .moreAction {
                if let topImg = imageTop, let topAction = actionTop {
                    actionButton(image: topImg, action: topAction)
                }
                
                if let label = textMain {
                    Text(label)
                        .font(.medium16)
                        .foregroundStyle(.white)
                }
                
                if let bottomImg = imageBottom, let bottomAction = actionBottom {
                    actionButton(image: bottomImg, action: bottomAction)
                }
            }
        }
        .padding(.vertical, 16)
        .frame(height: type == .oneAction ? 56 : 120)
        .frame(maxWidth: .infinity)
        .background(Color.color1A1A1A)
        .radius16
    }
    
    @ViewBuilder
    private func actionButton(image: Image, action: @escaping () -> Void) -> some View {
        Button(action: action) {
            image
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        ItemActionView(
            type: .oneAction,
            imageMain: Image(systemName: "star.fill"),
            actionMain: { print("Main tapped") }
        )
        
        ItemActionView(
            type: .moreAction,
            imageMain: nil,
            textMain: "Main",
            actionMain: { print("Main tapped") },
            imageTop: Image(systemName: "arrow.up"),
            actionTop: { print("Top tapped") },
            imageBottom: Image(systemName: "arrow.down"),
            actionBottom: { print("Bottom tapped") }
        )
    }
    .padding()
    .background(.black)
}
