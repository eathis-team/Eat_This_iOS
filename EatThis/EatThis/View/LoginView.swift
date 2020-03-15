//
//  LoginView.swift
//  EatThis
//
//  Created by 김선우 on 3/1/20.
//  Copyright © 2020 Eat This. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var user: User = User()
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                Text("LOGO").font(.largeTitle).foregroundColor(.white)
                Spacer()
            }.frame(height: 234).background(Color.orange2)
  
            LoginInputView().environmentObject(user)
                .padding([.leading, .trailing], 20.0)
                .padding(.top, -50)
                .shadow(color: .overlay1, radius: 5, x: 0, y: 2)
            
            Button(action: { }) {
                Text("로그인").font(.regular4).foregroundColor(.light1)
            }
            .frame(width: 200, height: 50)
            .background(Color.orange2)
            .cornerRadius(25)
            .padding(.top, -25.0)
            .shadow(color: .overlay1, radius: 1, x: 0, y: 2)
            Spacer()
            
            ZStack(alignment: .center) {
                LineView(height: 1, color: .light3)
                Text("or").font(.regular3).foregroundColor(.dark3).frame(width: 51).background(Color.light2)
            }
            
            SocialLoginView()
                .padding(.bottom, 25.0)
            
            Button(action: { }) {
                HStack {
                    Spacer()
                    Text("회원가입").foregroundColor(.dark3)
                    Spacer()
                }
            }
            .frame(height: 50)
            .background(Color.light4)
            
        }.background(Color.light2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


class User: ObservableObject {
    
    //    @Published var email: String = ""
    //    @Published var password: String = ""
        @State var email: String = ""
        @State var password: String = ""
}

struct LoginInputView: View {
    
    @EnvironmentObject var user: User
    
    var body: some View {
        VStack {
            
            TextField("E-mail", text: $user.email)
                .foregroundColor(.dark3).font(.regular5)
            LineView(height: 1, color: Color.light3)
                .padding(.bottom, 21.0)
            
            TextField("Password", text: $user.password)
            .foregroundColor(.dark3).font(.regular5)
            LineView(height: 1, color: Color.light3)
           
            HStack {
                Spacer()
                Button(action: { }) {
                    VStack(alignment: .center, spacing: 0) {
                        Text("비밀번호 찾기")
                            .frame(height: 17) .font(.small5).foregroundColor(.dark3).multilineTextAlignment(.center)
                        LineView(height: 1, color: .dark3)
                        
                    }.frame(width: 77)
                    
                }
            }
            .padding(.top, 20.0)
            
        }.padding([.leading, .trailing], 30)
            .frame(height: 211)
            .background(Color.light1)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.light1, lineWidth: 1) )
    }
}

struct SocialLoginView: View {
     
    var body: some View {
        VStack(alignment: .center, spacing: 7) {
            HStack(spacing: 7) {
                SocialLoginCell(imageName: "icoLoginN", text: "네이버의 로그인")
                SocialLoginCell(imageName: "icoLoginFb", text: "페이스북으로 로그인")
            }
            
            HStack(spacing: 7) {
                SocialLoginCell(imageName: "icoLoginGg", text: "구글로 로그인")
                SocialLoginCell(imageName: "icoLoginKk", text: "카카오톡으로 로그인")
            }
            
        }.padding()
    }
    
}

struct SocialLoginCell: View {
    
    @State var imageName: String
    @State var text: String
    
    var body: some View {
        HStack(spacing: 0) {
            
            Image(imageName)
                .frame(width: 40, alignment: .center)
            
            Rectangle()
                .frame(width: 1)
                .foregroundColor(.light4)
                .padding(.trailing, 14.0)
            
            Text(text)
                .font(.small6).foregroundColor(.dark3)
            
            Spacer()
            
        }.frame(minWidth: 0, maxWidth: .infinity)
            .frame(height: 40)
            .background(Color.light1)
            .cornerRadius(2)
            .overlay(
                RoundedRectangle(cornerRadius: 2)
                    .stroke(Color.light4, lineWidth: 1) )
    }
}
