//
//  AuthService.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/16.
//

import Firebase
import FirebaseAuth
import FirebaseFirestore


class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
        
    }
    
    @MainActor
    func login(withEmail email:String, password:String)  async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }catch{
            print("debug failed to create user with error \(error.localizedDescription)")
        }
    }
    
    @MainActor
    func createUser(withEmail email:String, password:String, fullname:String, username:String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            try await uploadUserData(withEmail: email, fullname: fullname, username: username, id: result.user.uid)
        }catch{
            print("debug failed to create user with error \(error.localizedDescription)")
        }
        
    }
    
    func signOut() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    @MainActor
    private func uploadUserData(withEmail email:String,
                                 fullname:String,
                                 username:String,
                                 id:String) async throws{
        
        let user = User(id: id, fullname: fullname, email: email, username: username, profileImageUrl: nil, bio: nil)
        guard let userData = try? Firestore.Encoder().encode(user) else {return}
        try await Firestore.firestore().collection("users").document(id).setData(userData)
        
    }
    
}
