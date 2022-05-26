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
            Section {
                HStack {
                    Image(systemName: "phone").foregroundColor(.blue)
                    Text(person.phoneNumber)
                }
                HStack {
                    Image(systemName: "tray").foregroundColor(.blue)
                    Text(person.email)
                }
            } header: {
                Text(person.fullName)
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContactList())
    }
}
