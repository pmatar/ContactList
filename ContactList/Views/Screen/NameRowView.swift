//
//  NameRowView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct NameRowView: View {
    let person: Person
    
    var body: some View {
        
        NavigationLink(destination: DetailsView()) {
                Text(person.fullName)
                .foregroundColor(.black)
                .frame(alignment: .leading)
        }
        
    }
}

struct NameRowView_Previews: PreviewProvider {
    static var previews: some View {
        NameRowView(person: Person(name: "John", surname: "Silverman", email: "131@me.com", phoneNumber: "+1422412120"))
    }
}
