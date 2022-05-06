//
//  ContentView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeTabView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
            .preferredColorScheme(.dark)
    }
}

