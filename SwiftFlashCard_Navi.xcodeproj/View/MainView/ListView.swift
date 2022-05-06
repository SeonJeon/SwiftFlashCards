//
//  ListView.swift
//  SwiftFlashCard_Navi
//
//  Created by seojeon22 on 2022/05/01.
//

import Foundation
import SwiftUI


struct ListView: View {
    @State private var isShowingDetailView1 = false
    @State private var isShowingDetailView2 = false
    @State private var searchText = ""
    @State private var isHidden = true
    @State private var isEditing = false
    @State var rawData = [Data(titles: "할당 연산자", groups: "기본 연산자", mainText: "할당연산자는 값을 초기화 시키거나 변경합니다." + "\n" + "let b = 5" + "\n" + "let a = 10" + "\n" + "a = b"),
                          Data(titles: "삼항조건 연산자", groups: "기본 연산자", mainText: "Question ? Answer1 : Answer2" + "\n" + "question 조건이 참인 경우 answer1, 아닌 경우 answer2"),
                          Data(titles: "값 타입 문자열", groups: "문자열과 문자", mainText: "Swift의 String은 값 타입(value type)입니다. 그래서 String이 다른 함수 혹은 메소드로부터 생성되면 String값이 할당 될 때, 이전 String의 레퍼런스를 할당하는 것이 아니라 값을 복사해서 생성합니다."),
                          Data(titles: "문자열 삽입", groups: "문자열과 문자", mainText: "백슬래쉬 괄호를 이용하여 상수, 변수, 리터럴 값을 문자열에 추가할 수 있다.")]
    
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    VStack {
                        NavigationLink(destination: GroupingView(), isActive: $isShowingDetailView1) {EmptyView()}
                        Button(action: { self.isShowingDetailView1 = true }) {
                            Image(systemName: "chevron.down")
                                .imageScale(.large)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                    
                    Spacer()
                    VStack {
                        Button(action: { self.isHidden.toggle() }) {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .padding()
                        }
                    }
                }
                
                Spacer()
                
                HStack {
                    if !isHidden {
                        
                        TextField(" Search your Swift keyword", text: $searchText)
                            .padding(7)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .padding(.horizontal, 10)
                            .onTapGesture {
                                self.isEditing = true
                            }
                    }
                }
                
                ZStack(alignment: .bottom) {
                    ScrollView {
                        VStack {
                            ForEach(rawData, id: \.self) { data in
                                if data.titles.contains("\(searchText)") || searchText == "" {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20).padding(.leading).padding(.trailing).frame(width: 400, height: 150, alignment: .center)
                                            .foregroundColor(.gray)
                                            .contextMenu {
                                                
                                                Button(role: .destructive) {
                                                    rawData.remove(at: 4)
                                                } label: {
                                                    Label("Delete", systemImage: "trash")
                                                }
                                                
                                            }
                                        
                                        Text("\(data.titles)")
                                            .font(.title2)
                                            .foregroundColor(.green)
                                            .bold()
                                            .offset(x: -55, y: -40)
                                            .frame(width: 230, height: 60, alignment: .leading)
                                            .padding()
                                        
                                        Text("\(data.groups)")
                                            .font(Font.system(size: 14))
                                            .foregroundColor(.mint)
                                            .bold()
                                            .offset(x: 120, y: -34)
                                            .frame(width: 100, height: 60, alignment: .trailing)
                                            .padding()
                                        
                                        Text("\(data.mainText)")
                                            .font(Font.system(size: 14))
                                            .foregroundColor(.black)
                                            .offset(x: 0, y: 25)
                                            .frame(width: 330, height: 100, alignment: .leading)
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                    HStack {
//                        Button(action: {print("Shuffling")}) {
//                            Image(systemName: "shuffle.circle.fill")
//                                .resizable()
//                                .frame(width: 65, height: 65)
//                                .foregroundColor(.white)
//                                .padding(EdgeInsets(top: 0, leading: 40, bottom: 20, trailing: 0))
//                        }
                        Spacer()
            
                        Button(action: {self.isShowingDetailView2 = true}) {
                                Image(systemName: "plus.circle.fill")
                                    .resizable()
                                    .frame(width: 65, height: 65)
                                    .foregroundColor(.white)
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 40))
                        }.offset(x: 15, y: -10)
                            .shadow(color: .black, radius: 2, x: 2, y: 2)
                        .sheet(isPresented: self.$isShowingDetailView2) {
                            AddingView(isModalShown: $isShowingDetailView2,
                            rawData: $rawData)
                        }
                    }.foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 2)
                                .fill(.black)
                                .frame(width: 400, height: 120)
                                .opacity(0)
                        )
                }
            }.frame(alignment: .top)
                .navigationBarTitle("List", displayMode: .inline)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
            .preferredColorScheme(.dark)
    }
}
