//
//  StoryData.swift
//  instagram
//
//  Created by Dominik Rubröder on 19.04.22.
//

import Foundation

struct Story: Identifiable {
    let id: UUID = UUID()
    let user: User
}
