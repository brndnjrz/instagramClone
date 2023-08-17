//
//  Post.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/15/23.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " Tattoo time",
            likes: 345550,
            imageUrl: "booBooPic",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
              ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " Nice day outside",
            likes: 345550,
            imageUrl: "booBooPic-2",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
              ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " Nap time",
            likes: 99843,
            imageUrl: "ana",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
              ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " Dinner with my sister",
            likes: 109000,
            imageUrl: "vv",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
              ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " Excited for barbie movie!",
            likes: 128000,
            imageUrl: "vanessa",
            timestamp: Date(),
            user: User.MOCK_USERS[4]
              ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            caption: " NY...",
            likes: 78000,
            imageUrl: "Brandon",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
              ),

        ]
}
