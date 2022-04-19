//
//  PostData.swift
//  instagram
//
//  Created by Dominik Rubröder on 18.04.22.
//

import Foundation

struct Post: Identifiable {
    let id: UUID = UUID()
    let location: String
    let images: [String]
    let likes: Int
    let description: String
    let comments: [String]
}
