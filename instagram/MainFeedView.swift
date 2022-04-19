//
//  MainFeedView.swift
//  instagram
//
//  Created by Dominik Rubröder on 18.04.22.
//

import SwiftUI

struct PostUI: View {
    let user: User
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    Circle()
                        .frame(width: 25, height: 25, alignment: .center)
                    VStack(alignment: .leading) {
                        Text(user.userName)
                            .font(.body)
                            .fontWeight(.bold)
                        Text(post.location)
                            .font(.caption)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 2) {
                    Circle()
                        .frame(width: 4, height: 4)
                    Circle()
                        .frame(width: 4, height: 4)
                    Circle()
                        .frame(width: 4, height: 4)
                }
            }
            
            ForEach(post.images, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFit()
            }
            
            HStack {
                HStack {
                    Image(systemName: "heart")
                    Image(systemName: "bubble.right")
                    Image(systemName: "paperplane")
                }
                .frame(width: 85, alignment: .leading)
                
                Spacer()
                
                HStack(spacing: 2) {
                    ForEach(post.images, id: \.self) {_ in 
                        Circle()
                            .frame(width: 4, height: 4)
                    }
                }
                
                Spacer()
                
                Image(systemName: "bookmark")
                    .frame(width: 85, alignment: .trailing)
            }
            .padding(.vertical, 4)
            
            VStack {
                Text("Gefällt \(user.userName) und \(post.likes) weiteren Personen")
                    .padding(.bottom, 4)
                
                VStack {
                    ForEach(post.comments, id: \.self) {
                        Text("\($0)…")
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
        }
        .padding(.vertical)
    }
}

struct MainFeedView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollView(.horizontal) {
                    HStack(alignment: .top, spacing: 8) {
                        ForEach(users) { user in
                            VStack(spacing: 4) {
                                Image(user.userImage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .clipShape(Circle())
                                
                                Text(user.userName)
                                    .font(.caption)
                                    .lineLimit(1)
                                    .frame(width: 70)
                            }
                        }
                    }
                }
                
//                ForEach(users) { user in
//                    PostUI(user: user, post: user.posts)
//                }
            }
            .navigationTitle("Instagram")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    HStack(spacing: 0) {
                        Button {
                            print("Pressed")
                        } label: {
                            Image(systemName: "plus.app")
                        }
                        
                        Button {
                            print("Pressed")
                        } label: {
                            Image(systemName: "heart")
                        }
                        
                        Button {
                            print("Pressed")
                        } label: {
                            Image(systemName: "paperplane")
                        }
                    }
                }
            }
        }
    }
}

struct MainFeedView_Previews: PreviewProvider {
    static var previews: some View {
        MainFeedView()
    }
}
