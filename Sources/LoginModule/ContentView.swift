//
//  ContentView.swift
//  PackageManager
//
//  Created by Sergio Pasos on 8/5/23.
//

import SwiftUI

public struct ContentView: View {
    
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    @State var email: String = ""
    @State var pass: String = ""
    
    public init() { }
    
    public var body: some View {
        VStack {
            Group {
                HStack {
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                }
                HStack {
                    TextField("Password", text: $pass)
                        .keyboardType(.emailAddress)
                }
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 12) .stroke(.black ,lineWidth: 1))
            .padding(.horizontal, 80)
            Button("Login") {
                authenticationViewModel.login(email: email, password: pass)
            }
            .buttonStyle(.bordered)
            .tint(.black)
        }
        .alert(authenticationViewModel.loginStatus == .success ? "Login Success" : "Login Error", isPresented: $authenticationViewModel.didUpdateLoginStatus) {
            Button("Aceptar") {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
