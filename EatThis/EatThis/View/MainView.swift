//
//  MainView.swift
//  EatThis
//
//  Created by 김선우 on 3/7/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI

struct MainView: View {
    init() {
        UITableView.appearance().separatorColor = .clear
    }
    
    var body: some View {
        ScrollView(.vertical) {
            
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        
                        Image("btnHomeNoti")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 45, height: 45)
                        
                    }.padding(.trailing, 16)
                    
                }
                HStack {
                    VStack(alignment: .leading) {
                        Text("오늘 뭐먹지?").font(.large1).foregroundColor(.light1)
                        Text("Eat This! 가 추천드립니다 ;D").font(.regular1).foregroundColor(.light1)
                    }
                    .padding(.leading, 16.0)
                    Spacer()
                }
                .padding(.bottom, 26.0)
                
            }.background(Color.orange2)
            
            
            ScrollView(.vertical) {

                HStack {

                    Text("지금 가장 인기많은 곳이에요!").font(.large2).foregroundColor(.orange2).padding(.leading, 31.0)
                    Spacer()
                    Image("icoArrowNextYel")
                        .padding(.trailing, 16.0)
                }
                .padding(.top, 43)
                
                HStack {
                    Image("icoMapPin").padding(.leading, 31.0)
                    Text("서울 걍냠구 신사동").font(.regular7).foregroundColor(.dark1)
                        .padding(.leading, 7.0)
                    Spacer()
                    Image("btnMap")
                        .padding(.trailing, 16.0)
                    
                    
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach((1...10), id: \.self) { _ in
                            StoreCell(imageHeight: 173)
                        }
                        
                    }.padding(.leading, 27)
                }
                
            }.background(Color.light1)
                .cornerRadius(20)
                .overlay( RoundedRectangle(cornerRadius: 20).stroke(Color.light4, lineWidth: 1) )
                .frame(height: 1000)
            
        }.background(Color.orange2)
    }
}

struct StoreCell: View {
    var imageHeight: CGFloat
    var score: Double = 4.0
    var body: some View {
        VStack {
            Image("food1")
                .resizable()
                .frame(height: imageHeight)
                .padding(.bottom, 14.0)
            
            HStack {
                Spacer()
                Image("btnStoreLikeOff").padding(.trailing, 19)
            }.offset(y: -40).padding(.bottom, -40)
            
            
            
            VStack(alignment: .leading) {
                Text("분식")
                    .font(.small3)
                    .foregroundColor(.orange1)
                    .padding(.bottom, 4.0)
                
                Text("엽기떡볶이 강남 미왕빌딩점")
                    .foregroundColor(.dark1)
                
                HStack {
                    StarView(score: Int(score), space: 3.6)
                    Text(String(score)).font(.small3).foregroundColor(.dark2)
                    Text("(233)").font(.small3).foregroundColor(.dark3)
                    
                    Spacer()
                }
                
                LineView(color: .light4)
                
                
                HStack() {
                    Text("[대표]").font(.regular4)
                        .foregroundColor(.dark2)
                    
                    Text("떡볶이 1인 세트").font(.regular5)
                        .foregroundColor(.dark2)
                    Spacer()
                    Text("14,000원").font(.regular5)
                        .foregroundColor(.dark1)
                    
                }.padding(.bottom, 21.0)
                
            }.padding([.leading, .trailing], 20.0).padding(.top, -15)
        }
        .cornerRadius(20)
        .overlay( RoundedRectangle(cornerRadius: 20).stroke(Color.light4, lineWidth: 1) )
    }
}

struct StarView: View {
    @State var score: Int
    @State var space: CGFloat
    var body: some View {
        HStack(spacing: space) {
            ForEach((0..<5), id: \.self) { num in
                Image(num < self.score ? "icoStarMOn" : "icoStarMOff")
                    .resizable().frame(width: 12.4, height: 12.4)
                
            }
        }
    }
}
struct LineView: View {
    var height: CGFloat = 0.5
    var color: Color?
    var body: some View {
        Rectangle().frame(height: height)
            .foregroundColor(color)
    }
}


struct MenuRow: View {
    var body: some View {
        HStack(alignment: .top ,spacing: 14) {
            Image("food2")
                .resizable()
                .frame(width: 90, height: 90)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                HStack {
                    Text("떡볶이 1인 세트")
                        .font(.regular1).foregroundColor(.dark1)
                    
                    Spacer()
                    
                    Text("7,000원")
                        .font(.small3).foregroundColor(.orange1)
                }
                Spacer()
                Text("떡볶이 1인분 + 튀김(오징어 1개, 고구마 2개, 김말이…")
                    .font(.small3).foregroundColor(.dark3)
            }
                
            .padding(.bottom, 12)
            
        }.frame(height: 107)
            .padding([.leading, .trailing], 16)
            .padding(.top, 20)
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainView().previewLayout(.device)
            StoreCell(imageHeight: 205).previewLayout(.sizeThatFits)
            MenuRow().background(Color.orange2.opacity(0.1)).previewLayout(.sizeThatFits)
            
            MenuRow().previewLayout(.sizeThatFits)
        }
    }
}
