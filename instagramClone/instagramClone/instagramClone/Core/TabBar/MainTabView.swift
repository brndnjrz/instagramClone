//
//  MainTabView.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/13/23.
//

import SwiftUI
//shows the main tabs that use can select
struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        //selection gives a number to each view
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear {
                    selectedIndex = 0 //number associated with the view
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0) //have to add the tag view that matches the selected index
            
            SearchView()
                .onAppear {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)//when clicking on cancel it resets and brings it back to feedview
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }.tag(2)
            
            Text ("Notifications")
                .onAppear {
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart")
                }.tag(3)
            
            CurrentUserProfileView(user: User.MOCK_USERS[2])
                .onAppear {
                    selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
        .accentColor(.black)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
