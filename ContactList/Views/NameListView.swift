//
//  NameListView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct NameListView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.email) { person in
            NavigationLink(destination: DetailsView(person: person)) {
                Text(person.fullName)
            }
        }.listStyle(.plain)
        
    }
}

struct NameListView_Previews: PreviewProvider {
    static var previews: some View {
        NameListView(persons: Person.getContactList())
    }
}
