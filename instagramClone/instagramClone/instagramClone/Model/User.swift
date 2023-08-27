//
//  User.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/15/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}
extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "brandon", profileImageUrl: "Brandon", fullName: "Brandon Fabian-Juarez", bio: "Tech/Cars/Fashion",
              email: "brandon@gmail.com"),
        .init(id: NSUUID().uuidString, username: "booboo", profileImageUrl: "booBooPic-2", fullName: "Booboo", bio: "Bobo for life",
              email: "booboo@gmail.com"),
        .init(id: NSUUID().uuidString, username: "vv", profileImageUrl: "vv", fullName: "Vivi", bio: "Material girl",
              email: "vivi@gmail.com"),
        .init(id: NSUUID().uuidString, username: "bri", profileImageUrl: "ana", fullName: "Brianna", bio: "Tiktok girl",
              email: "brianna@gmail.com"),
        .init(id: NSUUID().uuidString, username: "vanessa", profileImageUrl: "vanessa", fullName: "Vanessa", bio: "Barbie girl",
              email: "vanessa@gmail.com"),
    ]
}
