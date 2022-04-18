//
//  MainFeedView.swift
//  instagram
//
//  Created by Dominik Rubröder on 18.04.22.
//

import SwiftUI

struct PostUI: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Circle()
                        .frame(width: 25, height: 25, alignment: .center)
                    VStack(alignment: .leading) {
                        Text(post.authorName)
                            .font(.body)
                            .fontWeight(.bold)
                        Text(post.location)
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                HStack {
                    Circle()
                        .frame(width: 4, height: 4)
                    Circle()
                        .frame(width: 4, height: 4)
                    Circle()
                        .frame(width: 4, height: 4)
                }
                .frame(width: 32, alignment: .center)
            }
            
            Rectangle()
            
            HStack {
                HStack {
                    Image(systemName: "heart")
                    Image(systemName: "bubble.right")
                    Image(systemName: "paperplane")
                }
                
                Spacer()
                
                Image(systemName: "heart")
                
                Spacer()
                
                Image(systemName: "bookmark")
            }
            
            VStack {
                Text("Gefällt \(post.authorName) und \(post.likes) weiteren Personen")
                VStack {
                    ForEach(post.comments, id: \.self) {
                        Text("\($0)…")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
    }
}

struct MainFeedView: View {
    var body: some View {
        List(posts) { post in
            PostUI(post: post)
        }
    }
}

struct MainFeedView_Previews: PreviewProvider {
    static var previews: some View {
        MainFeedView()
    }
}
