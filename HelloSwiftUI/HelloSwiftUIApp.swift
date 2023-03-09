//
//  HelloSwiftUIApp.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/08.
//

import SwiftUI
import ComposableArchitecture

@main
struct HelloSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            StandbyView()
//            FeatureView(
//                store: Store(
//                    initialState: Feature.State(),
//                    reducer: Feature()
//                )
//            )
        }

    }
}
