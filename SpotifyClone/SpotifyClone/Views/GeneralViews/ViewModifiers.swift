//
//  ViewModifiers.swift
//  SpotifyClone
//
//  Created by Javier Galera Garrido on 07/02/2021.
//

import SwiftUI

struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 28, weight: .bold))
    }
}
