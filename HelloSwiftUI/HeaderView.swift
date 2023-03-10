//
//  HeaderView.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/10.
//

import SwiftUI

struct HeaderView: View {
    @State var width: Double = 0
    @State var height: Double = 0
    @Environment(\.easyDismiss) var easyDismiss: EasyDismiss

    var body: some View {
        HStack(alignment: .center) {
            Button {
                withAnimation {
                    easyDismiss()
                }
            } label: {
                HStack(alignment: .center) {
                    Image(systemName: "chevron.left")
                        .padding(.leading)
                    Text("Back")
                        .font(.system(size: 18))
                    Spacer()
                }
                .frame(maxWidth: width * 0.167, maxHeight: .infinity)
            }
            Spacer()
            Image(systemName: "abc")
                .resizable()
                .frame(maxWidth: 270, maxHeight: 29.5)
            Spacer()
            Button(action: {
                withAnimation {

                }
            }) {
                HStack(alignment: .center) {
                    Spacer()
                    Image(systemName: "globe")
                    Text("Languages")
                        .padding(.trailing)
                }
                .frame(maxWidth: width * 0.167, maxHeight: .infinity)
            }
        }
        .frame(maxWidth: width, maxHeight: height * 0.079)
    }
}
