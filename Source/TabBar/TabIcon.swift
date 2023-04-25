//
//  TabIcon.swift
//  CustomTabBar
//
//  Created by Bhoopendra Umrao on 4/25/23.
//

import SwiftUI

struct TabIcon: View {
    let viewModel: TabBarViewModel
    @ObservedObject var router: ViewRouter
    var body: some View {
        Button {
            router.currentItem = viewModel
        } label: {
            Image(systemName: viewModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 20, height: 20)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
        }
    }
}
