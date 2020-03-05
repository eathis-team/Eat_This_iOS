//
//  ContentView.swift
//  EatThis
//
//  Created by 김선우 on 3/1/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var user: User = User()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer(minLength: 50)
                Text("LOGO").font(.largeTitle)
                
                Spacer(minLength: 50)
                
                LoginView().environmentObject(user)
                
                Spacer()
                
                Text("--- or --- ").multilineTextAlignment(.center)
                
                
                Spacer(minLength: 20)
                
                SocialLoginView()
                
                Button(action: { }) { Text("회원가입") }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


class User: ObservableObject {
    
    //    @Published var email: String = ""
    //    @Published var password: String = ""
        @State var email: String = ""
        @State var password: String = ""
}

struct LoginView: View {
    
    @EnvironmentObject var user: User
    
    var body: some View {
        Group {
            TextField("E-mail", text: $user.email)
            TextField("Password", text: $user.password)
            Button(action: { }) { Text("비밀번호 찾기") }
                .padding([.trailing], 20.0)
            Button(action: { }) { Text("로그인")
                .multilineTextAlignment(.center) }
            
        }.padding([.leading, .trailing], 20.0).cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
    }
}

struct SocialLoginView: View {
    
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                HStack {
                    Image("btnStarLOn")
                    Text("네이버로 로그인")
                }
                
                HStack {
                    Image("btnStarLOn")
                    Text("페이스북으로 로그인")
                }
            }
            HStack {
                
                HStack {
                    Image("btnStarLOn")
                    Text("구글로 로그인")
                }
                
                HStack {
                    Image("btnStarLOn")
                    Text("카카오톡으로 로그인")
                }
            }
            
        }.padding().lineSpacing(10)
    }
}
