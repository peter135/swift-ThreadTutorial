//
//  ProfileThreadFilter.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/15.
//

import Foundation

enum ProfileThreadFilter:Int, CaseIterable, Identifiable {
    case threads = 0
    case replies
    
    var title: String {
        switch self {
        case .threads: return "threads"
        case .replies: return "replies"
        }
    }
    
    var id:Int {
        return self.rawValue
    }
}
