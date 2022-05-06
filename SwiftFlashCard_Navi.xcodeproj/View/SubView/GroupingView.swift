//
//  GroupingView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import Foundation
import SwiftUI

struct GroupingView: View {
    var body: some View {
            VStack {
                    List {
                        Section(header: Text("기본 연산자")) {
                            Text("할당 연산자")
                            Text("삼항조건 연산자")
                        }

                        Section(header: Text("문자열과 문자")) {
                            Text("갑 타입 문자열")
                            Text("문자열 삽입")
                        }
                    }
                Spacer()
            }.navigationBarTitle("Group", displayMode: .inline)
    }
}
