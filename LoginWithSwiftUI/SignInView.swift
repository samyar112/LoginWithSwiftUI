//
//  SignInView.swift
//  LoginWithSwiftUI
//
//  Created by Samir Pandey on 4/13/23.
//

import SwiftUI

struct SignInView: View {
    @State private var email:String = ""
    @State private var showWebView = false
    @State private var showGoogleView = false
    
    var body: some View {
        ZStack {
            Color("BgColor").edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                VStack {
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 30)
                    
                    Button {
                        showWebView.toggle()
                        
                    } label: {
                        SocialLoginButton(image: Image("apple"), text: Text("Sign In With Apple"))
                    }
                    .sheet(isPresented: $showWebView) {
                        WebView(url: URL(string: "https://www.icloud.com")!)
                    }
                    
                    Button {
                        showGoogleView.toggle()
                        
                    } label: {
                        SocialLoginButton(image: Image("google"), text: Text("Sign In With Google"))
                    }
                    .sheet(isPresented: $showGoogleView) {
                        WebView(url: URL(string: "https://www.gmail.com")!)
                    }
                    
                    .foregroundColor(Color("PrimaryColor"))
                    .padding(.vertical)
                    Text("or get a link emailed to you")
                        .foregroundColor(Color.black.opacity(0.4))
                    
                    TextField("Work email address", text: $email)
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
                        .padding(.vertical)
                        .padding(.vertical)
                    
                    PrimaryButton(title: "Email me a sign up link")
                }
                Spacer()
                Divider()
                Spacer()
                Text("you're completely safe. ")
                Text("read our term & conditions.")
                    .foregroundColor(Color("PrimaryColor"))
                Spacer()
            }
            .padding()
        }
    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}


