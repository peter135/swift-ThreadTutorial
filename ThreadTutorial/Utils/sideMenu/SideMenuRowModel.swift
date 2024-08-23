//
//  SideMenuRowModel.swift
//  ThreadTutorial
//
//  Created by 炜季 on 2024/8/14.
//

import Foundation

enum SideMenuRowModel: Int,CaseIterable {
    case dashboard = 0
    case performance
    case profile
    case search
    case notification
    
    var title:String {
        switch self {
        case .dashboard:
            return "Dashboard"
        case .performance:
            return "Performance"
        case .profile:
            return "Profile"
        case .search:
            return "Search"
        case .notification:
            return "Notification"
            
        }
    }
    
    var systemImageName:String {
        switch self {
        case .dashboard:
            return "filemenu.and.cursorarrow"
        case .performance:
            return "chart.bar"
        case .profile:
            return "person"
        case .search:
            return "magnifyingglass"
        case .notification:
            return "bell"
            
        }
    }
    
}

extension SideMenuRowModel:Identifiable {
    var id: Int {return self.rawValue}
}
