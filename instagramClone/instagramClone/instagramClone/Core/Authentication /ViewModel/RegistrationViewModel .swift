//
//  RegistrationViewModel .swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/26/23.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser() async throws {
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
}
