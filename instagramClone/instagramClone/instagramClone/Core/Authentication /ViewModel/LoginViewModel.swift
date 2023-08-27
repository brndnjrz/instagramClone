//
//  LoginViewModel.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/26/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
