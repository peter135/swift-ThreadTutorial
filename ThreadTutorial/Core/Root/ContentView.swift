//
//  ContentView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/14.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                ThreadsTabView()
            }else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
