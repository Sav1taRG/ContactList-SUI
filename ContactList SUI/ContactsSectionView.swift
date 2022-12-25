//
//  ContactsSectionView.swift
//  ContactList SUI
//
//  Created by Roman Golubinko on 24.12.2022.
//

import SwiftUI

struct ContactsSectionView: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                Section(header: Text(contact.fullName)) {
                    Label(contact.phoneNumber, systemImage: "phone")
                    Label(contact.email, systemImage: "envelope")
                }
            }
            .navigationTitle("Contact list")
        }
    }
}

struct ContactsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsSectionView(contacts: Person.getPersons())
    }
}
