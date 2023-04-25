//
//  PopUpMenu.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import SwiftUI

struct PopUpMenu: View {
    let menuItems: [MenuViewModel]
    var body: some View {
        HStack(spacing: 24) {
            Spacer()
            ForEach(menuItems, id: \.self) { item in
                MenuItem(viewModel: item)
            }
            Spacer()
        }
        .transition(.scale)
    }
}

struct PopUpMenu_Previews: PreviewProvider {
    static var previews: some View {
        PopUpMenu(menuItems: MenuViewModel.allCases)
    }
}
