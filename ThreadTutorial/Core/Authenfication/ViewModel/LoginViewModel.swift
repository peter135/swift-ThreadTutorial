//
//  LoginViewModel.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/16.
//

import Foundation

class LoginViewModel:ObservableObject {
    
    @Published  var email = ""
    @Published  var password = ""
    
    @MainActor
    func login() async throws {
        
       try await AuthService.shared.login(withEmail: email,
                                      password: password)
        
    }
    
    
}



