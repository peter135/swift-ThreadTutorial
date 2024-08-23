//
//  EditProfileView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio = ""
    @State private var link = ""
    @State private var isPrivateProfile = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .edgesIgnoringSafeArea([.bottom, .horizontal])
                
                VStack {
                    
                    //name and profile image
                    HStack {
                        VStack(alignment:.leading) {
                            Text("name")
                                .fontWeight(.semibold)
                            
                            Text("charles leclerc")
                        }
                        .font(.footnote)
                        
                        Spacer()
                        
                        CircularProfileImageView()
                    }
                    
                    Divider()
                    
                    // bio filed
                    VStack(alignment:.leading) {
                        Text("bio")
                            .fontWeight(.semibold)
                        
                        TextField("enter your bio ...",text: $bio,axis: .vertical)
                        
                    }
                    .font(.footnote)
                    
                    Divider()
                    
                    VStack(alignment:.leading) {
                        Text("link")
                            .fontWeight(.semibold)
                        
                        TextField("add link ...",text: $link)
                        
                    }
                    .font(.footnote)
                    
                    Divider()
                    
                    Toggle("private profile", isOn: $isPrivateProfile)
                    
                }
                .font(.footnote)
                .padding()
                .background(.white)
                .cornerRadius(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4),lineWidth: 1)
                }
                .padding()
                
                
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading){
                    Button("cancel"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                }
                
                ToolbarItem(placement:.navigationBarTrailing){
                    Button("done"){
                        
                    }
                    .font(.subheadline)
                    .foregroundColor(.black)
                    
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}
