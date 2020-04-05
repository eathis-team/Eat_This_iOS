//
//  HomeMainView.swift
//  EatThis
//
//  Created by 김선우 on 4/5/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI

struct HomeMainView: View {
    var body: some View {
        VStack {
            HomeMainHeader().padding(.top, 0)
            
            ScrollView(.vertical) {
                
                HStack {
                    Text("지금 가장 인기많은 곳이에요!")
                        .font(.large2)
                        .foregroundColor(.orange2)
                        .padding(.leading, 31.0)
                    
                    Spacer()
                    Image("icoArrowNextYel").padding(.trailing, 16.0)
                    
                }.padding(.top, 43)
                
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
                
                HStack {
                    Spacer()
                    Text("구글광고").foregroundColor(.black).font(.regular7)
                    Spacer()
                }
                .frame(height: 60)
                .background(Color.dark3)
                .padding([.leading, .trailing], 16)
                .padding(.top, 44)
                
                HStack {
                    Text("방금 업데이트 된 매장이에요").padding(.leading, 16).font(.regular1).foregroundColor(.dark1)
                    Spacer()
                    Image("icoArrowNextGr").padding(.trailing, 16)
                }
                .padding(.top, 29.0)
                
                ScrollView(.horizontal) {
                    HStack(spacing: 20) {
                        ForEach((1...10), id: \.self) { _ in
                            StoreCell(imageHeight: 102).frame(width: 150, height: 203)
                        }
                        
                    }.padding(.leading, 27).padding(.top, 14)
                }
                
            }.background(Color.light1)
                .cornerRadius(20)
                .overlay( RoundedRectangle(cornerRadius: 20).stroke(Color.light4, lineWidth: 1) ) 
             
        }.padding(.vertical).background(Color.orange2)
    }
}


struct HomeMainView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMainView()
    }
}

struct HomeMainHeader: View {
    var body: some View {
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
    }
}
