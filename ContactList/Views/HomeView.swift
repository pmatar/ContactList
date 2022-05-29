//
//  HomeView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct HomeView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                NameListView(persons: persons)
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacts")
                    }
                ContactListView(persons: persons)
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }.navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
