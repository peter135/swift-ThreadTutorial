//
//  ThreadsTextFieldModifier.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }

}

