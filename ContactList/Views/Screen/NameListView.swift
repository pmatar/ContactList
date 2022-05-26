//
//  NameListView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct NameListView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        
        List(persons, id:\.email) { person in
            NameRowView(person: person)
        }.navigationTitle("Contact List")
            .listStyle(.plain)
        
    }
}

struct NameListView_Previews: PreviewProvider {
    static var previews: some View {
        NameListView()
    }
}
