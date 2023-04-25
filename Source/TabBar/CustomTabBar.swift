//
//  CustomTabBar.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import SwiftUI

struct CustomTabBar: View {
    @State private var showMenu: Bool = false
    @ObservedObject var router = ViewRouter()
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Spacer()
                router.view
                Spacer()
                HStack {
                    TabIcon(viewModel: .home, router: router)
                    TabIcon(viewModel: .search, router: router)
                    TabMenuIcon(showMenu: $showMenu)
                        .onTapGesture {
                            withAnimation {
                                showMenu.toggle()
                            }
                        }
                    TabIcon(viewModel: .notification, router: router)
                    TabIcon(viewModel: .account, router: router)
                }
                .frame(height: UIScreen.main.bounds.height/8)
                .frame(maxWidth: .infinity)
                .background(Color(.systemGray5))
            }
            if showMenu {
                PopUpMenu(menuItems: MenuViewModel.allCases)
                    .padding(.bottom, 144)
            }
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
