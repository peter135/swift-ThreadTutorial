//
//  RegistrationView.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()
    
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads-app-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 120,height: 120)
                .padding()
            
            VStack{
                TextField("enter your email",text:  $viewModel.email)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("enter your password",text: $viewModel.password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("enter your fullname",text:  $viewModel.fullname)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("enter your username",text: $viewModel.username)
                    .modifier(ThreadsTextFieldModifier())
            }
            
            Button {
               
                Task {try await viewModel.createUser()}
                
            } label: {
                Text("Sign up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352,height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                
            } label: {
                HStack(spacing:3) {
                    Text("already have an account")
                    
                    Text("sign in")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundColor(.black)
            }
            .padding(.vertical,16)
        }
    }
}

#Preview {
    RegistrationView()
}
