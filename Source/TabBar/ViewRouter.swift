//
//  ViewRouter.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import Foundation
import SwiftUI

final class ViewRouter: ObservableObject {
    @Published var currentItem: TabBarViewModel = .home
    var view: some View { return currentItem.view }
}

enum TabBarViewModel: Int, CaseIterable {
case home
case search
case notification
case account
    
    var imageName: String {
        switch self {
        case .home:  return "house.fill"
        case .search: return "magnifyingglass"
        case .notification: return "bell.fill"
        case .account: return "person.fill"
        }
    }
    
    // Link tab view here
    var view: some View {
        switch self {
        case .home:  return Text("Home")
        case .search: return Text("Search")
        case .notification: return Text("Notifications")
        case .account: return Text("Profile")
        }
    }
}
