//
//  PostData.swift
//  instagram
//
//  Created by Dominik Rubröder on 18.04.22.
//

import Foundation

struct Post: Identifiable {
    let id: UUID = UUID()
    let authorName: String
    let authorImage: String
    let location: String
    let image: String
    let likes: Int
    let description: String
    let comments: [String]
}

let posts: [Post] = [
    Post(authorName: "michaelscott", authorImage: "authorImageURL", location: "Scranton", image: "imageURL", likes: 28943, description: "That's what she said", comments: ["Awesome", "lol so funny", "classic michael"]),
    Post(authorName: "dwightschrute", authorImage: "authorImageURL", location: "Scranton", image: "imageURL", likes: 56927, description: "assistent regional manager", comments: ["IT IS ASSISTANT TO THE REGIONAL MANAGER!!!!", "dwight main character after season 7"])
]
