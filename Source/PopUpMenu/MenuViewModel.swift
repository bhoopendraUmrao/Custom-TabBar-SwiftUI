//
//  MenuViewModel.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import SwiftUI

enum MenuViewModel: Int, CaseIterable {
case share
case save
case add
case download
    
    var imageName: String {
        switch self {
        case .share:  return "paperplane.fill"
        case .save: return "bookmark.fill"
        case .add: return "plus.rectangle.fill.on.rectangle.fill"
        case .download: return "square.and.arrow.down.fill"
        }
    }
    
    var view: some View {
        switch self {
        case .share:  return Text("Share")
        case .save: return Text("Save")
        case .add: return Text("Add")
        case .download: return Text("Download")
        }
    }
}
