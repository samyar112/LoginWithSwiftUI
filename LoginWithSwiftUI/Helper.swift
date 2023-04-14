//
//  Helper.swift
//  LoginWithSwiftUI
//
//  Created by Samir Pandey on 4/13/23.
//

import SwiftUI


struct PrimaryButton: View {
    var title : String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("PrimaryColor"))
            .cornerRadius(50)
    }
}

struct SocialLoginButton: View {
    var image: Image
    var text : Text
    var body: some View {
        HStack{
            image
                .padding(.horizontal)
            Spacer()
            text
                .font(.title2)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(50)
        .shadow(color: Color.black.opacity(0.08), radius: 60, x: 0, y: 16)
        .padding(.vertical)
    }
}
