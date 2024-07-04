//
//  ContentView.swift
//  dicoding-pemula
//
//  Created by Wildan on 29/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            IphoneListView().tabItem {
                Image(systemName: "list.bullet")
                Text("List")
            }
            
            Profile().tabItem{
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

#Preview {
    ContentView()
}
