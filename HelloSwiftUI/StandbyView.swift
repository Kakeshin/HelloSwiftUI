//
//  StandbyView.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/08.
//

import SwiftUI

struct StandbyView: View {
    @State private var isTransition = false

    var body: some View {
        ZStack {
            VStack {
                Image("image")
                    .resizable()
                    .frame(minWidth: 0,
                           maxWidth: .infinity,
                           minHeight: 0,
                           maxHeight: .infinity)
                    .ignoresSafeArea()
            }
            VStack {
                Text("").font(.system(size: 28))
                Text("タップしてみてね♪").font(.system(size: 66))
                Image(systemName: "hand.raised.fingers.spread.fill")
                    .resizable()
                    .frame(height: UIScreen.main.bounds.height * 0.1)
                    .aspectRatio(0.25, contentMode: .fit)
                Text("").font(.system(size: 28))
            }

            Button(action: {
                withAnimation {
                    isTransition = true
                }
            }) {
                Text("")
                    .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .ignoresSafeArea()
            }

            if isTransition {
                MenuView()
                    .transition(.opacity)
            }
        }
    }
}

