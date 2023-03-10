//
//  FirstViewModel.swift
//  HelloSwiftUI
//
//  Created by Kakeshin on 2023/03/09.
//

import SwiftUI

final class ObservedFlag: ObservableObject {
    @Published var isMenu: Bool = false
}
