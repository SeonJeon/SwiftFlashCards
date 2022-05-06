//
//  HomeTabView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import Foundation
import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            ListView()
                .tabItem {
                    Image(systemName: "doc")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                    Text("List")
                }
            FlashView()
                .tabItem {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                    Text("Flash Card")
                }
            RewardView()
                .tabItem {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                    Text("Reward")
                }
        }
    }
}
