//
//  DetailsView.swift
//  ContactList
//
//  Created by Paul Matar on 26/05/2022.
//

import SwiftUI

struct DetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 125, height: 125)
                    .padding()
                Spacer()
            }
            
            HStack {
                Image(systemName: "phone").foregroundColor(.blue)
                Text(person.phoneNumber)
            }
            HStack {
                Image(systemName: "tray").foregroundColor(.blue)
                Text(person.email)
            }
        }.navigationTitle(person.fullName)
            .listStyle(.grouped)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(person: Person(name: "John",
                                   surname: "Silverman",
                                   email: "131@me.com",
                                   phoneNumber: "+1422412120"))
    }
}
