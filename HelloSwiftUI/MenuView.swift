//
//  MenuView.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/09.
//

import SwiftUI

struct MenuView: View {
    @State private var flag = false

    var body: some View {
        ZStack() {
            VStack {
                Button(action: {
                    withAnimation {
                        flag = true
                    }
                }) {
                    Text("")
                        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                        .ignoresSafeArea()
                }

            }
            if flag {
                StandbyView().transition(.opacity)
            }
        }
        .background(.red)

    }
}
