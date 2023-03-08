//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/08.
//

import SwiftUI

struct FirstView: View {
    @State private var isShowingModal = false
    @State private var isTransition = false
    @State private var opacity: Double = 0

    var body: some View {
        ZStack {
            VStack {
                NavigationStack {
                    NavigationLink(destination: SecondView()) {
                        Text("Push")
                    }
                    Button("Modal") {
                        isShowingModal.toggle()
                    }
                    .sheet(isPresented: $isShowingModal) {
                        SecondView()
                    }
                    Button(action: {
                        isTransition.toggle()
                    }) {
                        Text("Fade")
                    }
                    Text("Showing flag: \(isShowingModal.description)")
                    Text("Transition flag: \(isTransition.description)")
                }
            }
            if self.isTransition {
                FadeView(isPresented: $isTransition)
            }
        }
    }
}

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Axe")
        }
    }
}

struct FadeView: View {
    @State private var opacity: Double = 0
    @Binding var isPresented: Bool

    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                Text("FadeView")
            }
            .background(.red)
            Button(action: {
                withAnimation(.linear(duration: 0.5)) {
                    isPresented = false
                }
            }) {
                Text("Close")
                    .foregroundColor(.white)
            }
        }
        .frame(width: .infinity, height: 400)
        .background(.blue)
        .opacity(opacity)
        .onAppear {
            withAnimation(.linear(duration: 0.5)) {
                opacity = 1.0
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
