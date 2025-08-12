//
//  DirectionalPadView.swift
//  RemoteTV
//
//  Created by Tuấn Nguyễn on 11/8/25.
//

import SwiftUI

 struct DirectionalPadView: View {

    var body: some View {
        GeometryReader { proxy in
            let diameter = proxy.size.width
            ZStack {
                Circle()
                    .fill(Color.color1A1A1A.opacity(0.2))
                    .frame(width: diameter, height: diameter)

                VStack {
                    Button(
                        action: {
                            print("Up pressed")
                        }, label: {
                            Image(systemName: "chevron.up")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                .padding(diameter/6)
                                .offset(x: 0, y: -12)
                        }
                    )
                    Spacer()

                    Button(
                        action: {
                            print("Down pressed")
                        }, label: {
                            Image(systemName: "chevron.down")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                .padding(diameter/6)
                                .offset(x: 0, y: 12)
                        }
                    )
                }
                .frame(height: diameter)

                HStack {
                    Button(
                        action: {
                            print("Left pressed")
                        }, label: {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                .padding(diameter/6)
                                .offset(x: -12, y: 0)
                        }
                    )

                    Spacer()
                    Button(
                        action: {
                            print("Right pressed")
                        }, label: {
                            Image(systemName: "chevron.right")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundColor(.white)
                                .padding(diameter/6)
                                .offset(x: 12, y: 0)
                        }
                    )
                }
                .frame(width: diameter)

                Button(
                    action: { print("OK pressed") },
                    label: {
                        Circle()
                            .fill(Color.gray.opacity(0.3))
                            .frame(width: diameter/3, height: diameter/3)
                            .overlay(
                                Text("OK")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                    }
                )
            }
            .frame(width: diameter, height: diameter)
            .position(x: proxy.size.width / 2, y: proxy.size.height / 2)
        }
    }
}

struct DirectionalPadView_Previews: PreviewProvider {
    static var previews: some View {
        DirectionalPadView()
            .preferredColorScheme(.dark)
    }
}
