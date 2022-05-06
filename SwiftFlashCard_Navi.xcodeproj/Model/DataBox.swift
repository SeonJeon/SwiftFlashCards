//
//  DataBox.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/04.
//

import Foundation
import SwiftUI

struct MyVariables {
    static var yourVariable = "someString"
}

class Datas: ObservableObject {
    @Published var datas: [Data]

    init(){
        self.datas = []
    }

    init(datas: [Data]){
        self.datas = datas
    }
}
