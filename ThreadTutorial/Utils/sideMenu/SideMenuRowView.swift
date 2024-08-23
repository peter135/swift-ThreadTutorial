//
//  SideMenuRowView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/14.
//

import SwiftUI

struct SideMenuRowView: View {
    
    let option: SideMenuRowModel
    @Binding var selectedOption:SideMenuRowModel?
    
    private var isSelected:Bool {
        return selectedOption == option
    }
    
    var body: some View {
        HStack {
            Image(systemName: option.systemImageName)
                .imageScale(.small)
            
            Text(option.title)
                .font(.subheadline)
            
            Spacer()
        }
        .padding(.leading)
        .foregroundStyle(isSelected ? .blue : .black)
        .frame(width: 216,height: 44)
        .background(isSelected ? .blue.opacity(0.15) : .clear)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

#Preview {
    SideMenuRowView(option: .dashboard,selectedOption: .constant(.dashboard))
}
