//
//  ExploreView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { user in
                        VStack {
                            UserCell()
                            
                            Divider().padding(.horizontal)
                        }
                        .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("search")
            .searchable(text: $searchText,prompt: "search")
        }
    }
}

#Preview {
    ExploreView()
}
