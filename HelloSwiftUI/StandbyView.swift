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
        GeometryReader { geometry in
            ZStack {
                VStack {
                    Image("image")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea()

                }
                VStack {
                    Text("やっはろぉ〜").font(.system(size: 28))
                    Text("タップしてみてね♪").font(.system(size: 66))
                    Image(systemName: "hand.raised.fingers.spread.fill")
                        .resizable()
                        .frame(height: geometry.size.height * 0.1)
                        .aspectRatio(0.25, contentMode: .fit)
                    Text("いいことあるかも！？").font(.system(size: 28))
                }
                Button {
                    withAnimation {
                        isTransition = true
                    }
                } label: {
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
                .easyFullScreenCover(isPresented: $isTransition) {
                    MenuView()
                }
            }
        }
    }
}

