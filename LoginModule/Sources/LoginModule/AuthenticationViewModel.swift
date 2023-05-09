//
//  AuthenticationViewModel.swift
//  PackageManager
//
//  Created by Sergio Pasos on 8/5/23.
//

import Foundation

public enum LoginStatus {
    case success
    case error
}

final public class AuthenticationViewModel: ObservableObject {
    
    @Published public var loginStatus: LoginStatus = .success
    @Published public var didUpdateLoginStatus: Bool = false
    
    public init() { }
    
    public func login(email: String, password: String) {
        if email.lowercased() == "sergio@gmail.com" && password.lowercased() == "1234" {
            loginStatus = .success
        } else {
            loginStatus = .error
        }
        didUpdateLoginStatus = true
    }
    
    public func signUp(email: String, password: String) {
        print("registrarse...")
    }
    
    public func recoverPassword(email: String, password: String) {
        print("recuperar contraseña...")
    }
}
