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
                    Image(systemName: "house.fill")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            ReelsView()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                }
            
            ShopView()
                .tabItem {
                    Image(systemName: "cart")
                }
            UserProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
