//
//  ContentView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            TabView {
                NameListView()
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                ContactListView()
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
