//
//  RewardView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import Foundation
import SwiftUI

struct JazzImage: View {
    @State var isTapped: Bool = false
    
    let idx: Int
    var body: some View {
        ZStack {
        Image("JA_\(idx)")
            .resizable()
            .frame(width: 200, height: 200)
            .background(Color.gray)
            .cornerRadius(10)
            .shadow(color: .white, radius: 2, x: 2, y: 2)
            .onTapGesture {
                isTapped.toggle()
            }
            if isTapped == true {
                Image("JA_\(idx)" + "1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .background(RoundedRectangle(cornerRadius: 10))
                    .background(Color.black)
                    .opacity(0.5)
                    .onTapGesture {
                        isTapped.toggle()
                    }
            }
        }
    }
}

struct WhiskeyImage: View {
    @State var isTapped2: Bool = false
    
    let idx: Int
    var body: some View {
        ZStack {
        Image("LQ_\(idx)")
            .resizable()
            .frame(width: 200, height: 200)
            .background(Color.gray)
            .cornerRadius(10)
            .shadow(color: .white, radius: 2, x: 2, y: 2)
            .onTapGesture {
                isTapped2.toggle()
            }
            if isTapped2 == true {
                Image("LQ_\(idx)" + "1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .background(RoundedRectangle(cornerRadius: 10))
                    .background(Color.black)
                    .opacity(0.5)
                    .onTapGesture {
                        isTapped2.toggle()
                    }
            }
        }
    }
}

struct RewardView: View {
    
    @State var continueStudy: Int = 57
    
    var body: some View {
        NavigationView {
            
            VStack {
                HStack {
                    Text("🔥").offset(x: -10, y: -3)
                    Text("\(continueStudy)")
                        .font(.title)
                        .bold()
                        .foregroundColor(.red)
                        .offset(x: 2, y: -2)
                    Text("일 연속학습중!")
                    Text("🔥").offset(x: 10, y: -3)
                }.padding(.top)
                
                Text("Jazz Album")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top).padding(.leading)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(0..<(continueStudy / 10)) { idx in
                            JazzImage(idx: idx)
                            }
                    }.padding(.bottom)
                }
                
                Spacer()
                
                Text("Whiskey Box")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.red)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top).padding(.leading)
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach(0..<(continueStudy / 10)) { idx in
                            WhiskeyImage(idx: idx)
                        }
                    }.padding(.bottom)
                }
                
                Spacer()
                
            }.navigationBarTitle("Reward", displayMode: .inline)
        }
    }
}

struct RewardView_Previews: PreviewProvider {
    static var previews: some View {
        RewardView()
    }
}
