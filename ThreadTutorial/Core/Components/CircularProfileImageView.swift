//
//  CircularProfileImageView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 40,height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
