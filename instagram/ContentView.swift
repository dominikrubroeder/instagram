//
//  ContentView.swift
//  instagram
//
//  Created by Dominik Rubröder on 18.04.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            MainFeedView()
                .tabItem {
                    Label("", systemImage: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Label("", systemImage: "magnifyingglass")
                }
            
            ReelsView()
                .tabItem {
                    Label("", systemImage: "play.rectangle.fill")
                }
            
            ShopView()
                .tabItem {
                    Label("", systemImage: "cart")
                }
            UserProfileView()
                .tabItem {
                    Label("", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
