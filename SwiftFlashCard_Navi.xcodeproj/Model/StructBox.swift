import Combine
import SwiftUI
////
////  StructBox.swift
////  SwiftFlashCard_Navi
////
////  Created by seojeon22 on 2022/05/02.
////
//
//import Foundation
//import SwiftUI
//
//func RawDataAppend() {
//
//    rawData.append(Data(titles: "???", groups: "??????", mainText: "????????"))
//
//}
//
//struct Card: View {
//    var body: some View
//
//    RoundedRectangle(cornerRadius: 20).padding(.leading).padding(.trailing).frame(width: 400, height: 150, alignment: .center)
//        .foregroundColor(.gray)
//
//    Text("\(data.titles)")
//        .font(.title)
//        .foregroundColor(.green)
//        .bold()
//        .offset(x: -55, y: -45)
//        .frame(width: 230, height: 60, alignment: .leading)
//        .padding()
//
//    Text("\(data.groups)")
//        .font(Font.system(size: 16))
//        .foregroundColor(.mint)
//        .bold()
//        .offset(x: 120, y: -35)
//        .frame(width: 100, height: 60, alignment: .trailing)
//        .padding()
//
//    Text("\(data.mainText)")
//        .font(Font.system(size: 15))
//        .foregroundColor(.black)
//        .offset(x: 0, y: 25)
//        .frame(width: 330, height: 100, alignment: .leading)
//        .padding()
//
//}

struct Data: Hashable {
    var titles: String
    var groups: String
    var mainText: String
}


//class saveData: ObservableObject {
//    @Published var title: String
//    @Published var group: String
//    @Published var main: String
//    
//    init(title: String, group: String, main: String) {
//        self.title = title
//        self.group = group
//        self.main = main
//    }
//}
//
//class Data: ObservableObject {
//    @Published var titles: String
//    @Published var groups: String
//    @Published var mainText: String
//
//    init(titles: String, groups: String, mainText: String){
//        self.titles = titles
//        self.groups = groups
//        self.mainText = mainText
//    }
//}





