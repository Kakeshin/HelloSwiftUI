//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/08.
//

import SwiftUI

struct FirstView: View {
    @State private var isShowingModal = false
    @State private var isPresented = false
    @State private var isTransition = false
    @State private var isCustom = false
    @State private var opacity: Double = 0

    var body: some View {
        ZStack {
            VStack {
                Button("CustomTransition") {
                    withAnimation {
                        isCustom.toggle()
                    }
                }
                Button("Transition") {
                    withAnimation {
                        isTransition.toggle()
                    }
                }
            }.position(x: 100, y: 200)

            if isTransition {
                SecondView().transition(.opacity)
            }
            if isCustom {
                Text("カピ通信")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.green)
                    .transition(.customTransition)
            }
        }
    }
}

struct SecondView: View {
    @State private var flag = false

    var body: some View {
        ZStack {
            VStack {
                Text("Axe")
                    .foregroundColor(.white)
                Button("Back") {
                    withAnimation {
                        flag = true
                    }
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .background(.red)

            if flag {
                FirstView().transition(.opacity)
            }
        }
    }
}

struct MyScaleModifier: ViewModifier {
    let size: CGFloat
    let degrees: Double
    func body(content: Content) -> some View {
        content
            .scaleEffect(size)
            .rotationEffect(.degrees(degrees))
    }
}


extension AnyTransition {
    static var customTransition: AnyTransition {
        AnyTransition.modifier(
            active: MyScaleModifier(size: 0, degrees: -360),
            identity: MyScaleModifier(size: 1, degrees: 0)
        )
    }
}
