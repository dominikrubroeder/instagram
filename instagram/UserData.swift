//
//  UserData.swift
//  instagram
//
//  Created by Dominik Rubröder on 19.04.22.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    let userName: String
    let userImage: String
    let posts: [Post]
}

let users: [User] = [
    User(userName: "michaelscott", userImage: "theoffice-stanly", posts: [
        Post(location: "Scranton", images: ["theoffice-stanly", "post"], likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
        Post(location: "Scranton", images: ["post"], likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
    ]),
    User(userName: "dwightschrute", userImage: "theoffice-stanly", posts: [
        Post(location: "Scranton", images: ["theoffice-stanly", "post"], likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
        Post(location: "Scranton", images: ["post"], likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
    ]),
    User(userName: "jimhalpert", userImage: "theoffice-stanly", posts: [
        Post(location: "Scranton", images: ["theoffice-stanly", "post"], likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
        Post(location: "Scranton", images: ["post"], likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
    ]),
    User(userName: "stanlyhudson", userImage: "theoffice-stanly", posts: [
        Post(location: "Scranton", images: ["theoffice-stanly", "post"], likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
        Post(location: "Scranton", images: ["post"], likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
    ]),
    User(userName: "pambeesly", userImage: "theoffice-stanly", posts: [
        Post(location: "Scranton", images: ["theoffice-stanly", "post"], likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
        Post(location: "Scranton", images: ["post"], likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
    ]),
    User(userName: "ryanhoward", userImage: "theoffice-stanly", posts: [
        Post(location: "Scranton", images: ["theoffice-stanly", "post"], likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
        Post(location: "Scranton", images: ["post"], likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
    ])
]
