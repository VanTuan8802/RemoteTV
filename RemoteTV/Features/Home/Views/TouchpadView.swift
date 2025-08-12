//
//  TouchpadView.swift
//  RemoteTV
//
//  Created by Tuấn Nguyễn on 11/8/25.
//

import SwiftUI

struct TouchpadView: View {
    var body: some View {
        GeometryReader { geo in
            let width = geo.size.width

            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.color1A1A1A.opacity(0.2))

                Canvas { context, _ in
                    let dotSpacing: CGFloat = 20
                    let dotSize: CGFloat = 2

                    for x in stride(from: dotSpacing / 2, to: width, by: dotSpacing) {
                        for y in stride(from: dotSpacing / 2, to: width, by: dotSpacing) {
                            let rect = CGRect(x: x, y: y, width: dotSize, height: dotSize)
                            context.fill(Path(ellipseIn: rect), with: .color(Color.white.opacity(0.15)))
                        }
                    }
                }
            }
            .frame(width: width, height: width)
            .radius16
        }
        .aspectRatio(1, contentMode: .fit) 
    }
}

struct TouchpadView_Previews: PreviewProvider {
    static var previews: some View {
        TouchpadView()
            .preferredColorScheme(.dark)
            .frame(width: 300)
            .padding()
    }
}
