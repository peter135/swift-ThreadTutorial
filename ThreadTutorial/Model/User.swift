//
//  User.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/16.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullname: String
    let email: String
    let username: String
    let profileImageUrl: String?
    let bio: String?
}
