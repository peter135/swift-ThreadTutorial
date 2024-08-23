//
//  CreateThreadView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct CreateThreadView: View {
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment:.top) {
                    CircularProfileImageView()
                    
                    VStack(alignment:.leading, spacing: 4) {
                        Text("maxverstappen1")
                            .fontWeight(.semibold)
                        
                        TextField("start a thread ...",text: $caption,axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if !caption.isEmpty {
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12,height: 12)
                                .foregroundColor(.gray)
                        }
                    }
                    
                }
                
                Spacer()
            }
            .navigationTitle("new thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement:.navigationBarLeading){
                    Button("cancel") {
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
                
                ToolbarItem(placement:.navigationBarTrailing){
                    Button("post") {
                        dismiss()
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1)
                    .disabled(caption.isEmpty)
                    .fontWeight(.semibold)
                    .font(.subheadline)
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
