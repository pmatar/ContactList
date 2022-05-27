//
//  ContactListView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct ContactListView: View {
    let persons: [Person]
    
    var body: some View {
        
        List(persons, id: \.email) { person in
            Section(header: Text(person.fullName)) {
                Label(person.phoneNumber, systemImage: "phone")
                Label(person.email, systemImage: "tray")
            }
        }
        
    }
    
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
