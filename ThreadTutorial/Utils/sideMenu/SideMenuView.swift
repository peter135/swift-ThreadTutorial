//
//  SideMenuView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/14.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    @Binding var selectedTab: Int
    @State private var selectedOption: SideMenuRowModel?
    
    var body: some View {
        ZStack {
            if isShowing {
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                
                HStack {
                    VStack(alignment:.leading,spacing: 6) {
                        SideMenuHeaderView()
                        
                        VStack {
                            ForEach(SideMenuRowModel.allCases) { option in
                                Button(action: {
                                    selectedOption = option
                                    selectedTab = option.rawValue
                                    isShowing = false
                                }, label: {
                                    SideMenuRowView(option: option,selectedOption: $selectedOption)

                                })
                                
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270,alignment: .leading)
                    .background(.white)
                    
                    Spacer()
                }
                .transition(.move(edge: .leading))

            }
        }
        .animation(.easeOut, value: isShowing)
    }
}

#Preview {
    SideMenuView(isShowing:.constant(true),selectedTab: .constant(0))
}
