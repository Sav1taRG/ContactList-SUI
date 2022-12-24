//
//  ContactsView.swift
//  ContactList SUI
//
//  Created by Roman Golubinko on 24.12.2022.
//

import SwiftUI

struct ContactsView: View {
//    @State private var isPresented = false
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(destination: DetailsView(contact: contact)) {
                Text("\(contact.fullName)")
            }
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(contacts: Person.getPersons())
    }
}
