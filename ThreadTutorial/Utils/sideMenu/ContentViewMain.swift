//
//  ContentView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/14.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMenu = false
    @State private var selectedTab = 0
    
    var body: some View {
        
        NavigationStack{
            ZStack {
                TabView(selection: $selectedTab){
                    Text("dashboard")
                        .tag(0)
                    
                    Text("performance")
                        .tag(1)
                    
                    Text("profile")
                        .tag(2)
                    
                    Text("search")
                        .tag(3)
                    
                    Text("notifications")
                        .tag(4)
                }
                
                SideMenuView(isShowing: $showMenu,selectedTab: $selectedTab)
            }
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .navigationTitle("home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.topBarLeading){
                    Button(action:{
                        showMenu.toggle()
                    },label:{
                        Image(systemName: "line.3.horizontal")
                    })
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
