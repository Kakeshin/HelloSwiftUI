//
//  MenuView.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/09.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height

            VStack(spacing: 0) {
                HeaderView(width: width, height: height)
                GeometryReader { mainViewGeometry in
                    VStack(alignment: .center) {
                        Text("下の項目から選んでね♪")
                            .font(.system(size: 20))
                        Spacer().frame(height: mainViewGeometry.size.height * 0.143)
                        VStack {
                            GeometryReader { buttonGeometry in
                                VStack(spacing: 0) {
                                    MenuUpperButtonView(width: buttonGeometry.size.width, height: buttonGeometry.size.height)
                                    Spacer()
                                    MenuLowerButtonView(width: buttonGeometry.size.width, height: buttonGeometry.size.height)
                                }
                            }
                            .frame(width: width * 0.833, height: mainViewGeometry.size.height * 0.578)
                        }
                        Spacer().frame(height: mainViewGeometry.size.height * 0.137)
                        Image(systemName: "textformat.abc")
                            .resizable()
                            .frame(maxWidth: width * 0.424, maxHeight: height * 0.018)
                    }
                    .frame(width: width, height: mainViewGeometry.size.height)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
        }
    }
}

struct MenuUpperButtonView: View {
    @State var width: Double = 0
    @State var height: Double = 0

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Button {
                withAnimation {

                }
            } label: {
                VStack {
                    Image(systemName: "car")
                    Text("車でお越し")
                        .font(.system(size: 24))
                }
                .frame(width: width * 0.314, height: height * 0.673)
                .background(.pink)
            }
            Spacer()
            Button {
                withAnimation {

                }
            } label: {
                VStack {
                    Image(systemName: "bus")
                    Text("バスでお越し")
                        .font(.system(size: 24))
                }
                .frame(width: width * 0.314, height: height * 0.673)
                .background(.yellow)
            }
            Spacer()
            Button {
                withAnimation {

                }
            } label: {
                VStack {
                    Image(systemName: "tram")
                    Text("電車でお越し")
                        .font(.system(size: 24))
                }
                .frame(width: width * 0.314, height: height * 0.673)
                .background(.gray)
            }
        }
    }
}

struct MenuLowerButtonView: View {
    @State var width: Double = 0
    @State var height: Double = 0

    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Button {
                withAnimation {

                }
            } label: {
                HStack {
                    Image(systemName: "bicycle")
                    Text("自転車でお越し")
                        .font(.system(size: 24))
                }
                .frame(maxWidth: width * 0.489, maxHeight: height * 0.266)
                .background(.green)
            }
            Spacer()
            Button {
                withAnimation {

                }
            } label: {
                HStack(alignment: .center) {
                    Image(systemName: "figure.walk")
                    Text("徒歩でお越し")
                        .font(.system(size: 24))

                }
                .frame(maxWidth: width * 0.489, maxHeight: height * 0.266)
                .background(.purple)
            }
        }
    }
}
