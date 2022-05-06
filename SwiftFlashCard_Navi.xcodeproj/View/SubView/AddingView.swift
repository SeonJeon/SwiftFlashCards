//
//  AddingView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import Foundation
import SwiftUI



struct AddingView: View {
    @Binding var isModalShown: Bool
    @State private var title = ""
    @State private var subTitle = ""
    @State private var mainText = ""
    @State private var showingAlert = false
    
    @Binding var rawData: [Data]
    
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Spacer()
                Text("Swift Keyword").font(.headline).foregroundColor(.white)
                    .padding(.leading)
                TextField("enter", text: $title)
                    .padding()
                Spacer()
                Text("Keyword Group").font(.headline).foregroundColor(.white)
                    .padding(.leading)
                TextField("enter", text: $subTitle)
                    .padding()
                Spacer()
                Text("Describe the Keyword").font(.headline).foregroundColor(.white)
                    .padding(.leading)
                TextEditor(text: $mainText)
                    .foregroundColor(.white)
                    .frame(minHeight: 40, maxHeight: 200)
                    .border(Color.gray, width: 3)
                    .cornerRadius(5)
                    .padding()
                    .navigationBarTitle("Add Keyword", displayMode: .inline)
                    .navigationBarItems(trailing: Button("Done", action: {
                        if title != "" && subTitle != "" && mainText != "" {
                            self.isModalShown = false
                            rawData.append(Data(titles: title, groups: subTitle, mainText: mainText))
                            title = ""
                            subTitle = ""
                            mainText = ""
                        }
                    }).foregroundColor(.blue))
                    .navigationBarItems(leading: Button("Cancel", action: {
                        self.isModalShown = false
                        title = ""
                    }).foregroundColor(.blue))
                Spacer()
            }.textFieldStyle(OvalTextFieldStyle())
        }
    }
}


struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
            .cornerRadius(5)
            .shadow(color: .gray, radius: 2)
    }
}
