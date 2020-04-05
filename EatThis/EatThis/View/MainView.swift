//
//  MainView.swift
//  EatThis
//
//  Created by 김선우 on 3/7/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI
import UIKit

struct MainView: View {
    init() {
        UITableView.appearance().separatorColor = .clear
        UITabBar.appearance().backgroundColor = .white
    }
    
    var body: some View {
        TabView {
            LoginView()
                .tabItem { TabViewItem(type: .login) }
            
            ScrollView(.vertical) { HomeMainView() }.padding([.all], 0)
                .tabItem { TabViewItem(type: .home) }
            
            FavoriteMainView()
                .tabItem { TabViewItem(type: .favorite) }
            
            ReviewMainView()
                .tabItem { TabViewItem(type: .review) }
            
            LoginView()
                .tabItem { TabViewItem(type: .search) }
            
            SettingMainView()
                .tabItem { TabViewItem(type: .myPage) }
        }.accentColor(.orange)
    }
}



struct TabViewItem: View {
    enum TabViewItemType: String {
        case login    = "로그인"
        case home     = "홈"
        case favorite = "즐겨찾기"
        case review   = "리뷰쓰기"
        case search   = "검색"
        case myPage   = "마이페이지"
        
        var image: Image {
            switch self {
            case .login:    return Image("btnStoreLikeListOff")
            case .home:     return Image("btnStoreLikeListOff")
            case .favorite: return Image("btnStoreLikeListOff")
            case .review:   return Image("btnStoreLikeListOff")
            case .search:   return Image("btnStoreLikeListOff")
            case .myPage:   return Image("btnStoreLikeListOff")
            }
        }
        
        var text: Text {
            Text(self.rawValue)
        }
    }
    
    var type: TabViewItemType
    
    var body: some View {
        VStack {
            type.image.renderingMode(.template)
            type.text
            
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
