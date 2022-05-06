//
//  FlashView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import Foundation
import SwiftUI

struct FlashView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                ZStack(alignment: .bottom) {
                    VStack {
                        
                        Button(action: {print("ShufflePlaying")}) {
                            Text("무작위로 재생하기")
                                .foregroundColor(Color.white)
                                .bold()
                                .multilineTextAlignment(.center)
                                .frame(width: 300, height: 150)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray))
                                .shadow(color: .gray, radius: 3, x: 0, y: 3)
                                .padding()
                        }
                        
                        Rectangle()
                            .fill(Color.black)
                            .frame(width: 25, height: 25)
                        
                        Button(action: {print("GroupPlaying")}) {
                            Text("그룹으로 재생하기")
                                .foregroundColor(Color.white)
                                .bold()
                                .multilineTextAlignment(.center)
                                .frame(width: 300, height: 150)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color.gray))
                                .shadow(color: .gray, radius: 3, x: 0, y: 3)
                                .padding()
                        }
                    }
                }.frame(alignment: .top)
                    .navigationBarTitle("Flash Card", displayMode: .inline)
            }
        }
    }
}

    struct FlashView_Previews: PreviewProvider {
        static var previews: some View {
            FlashView()
        }
    }
