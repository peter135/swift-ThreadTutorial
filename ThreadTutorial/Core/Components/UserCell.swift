//
//  UserCell.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImageView()
            
            VStack(alignment:.leading) {
                Text("maxverstappen1")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("max verstappen")
                    .font(.footnote)
                
            }
            
            Spacer()
            
            Text("follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100,height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4),lineWidth:1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
