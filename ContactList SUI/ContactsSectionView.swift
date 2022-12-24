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
        List(contacts) { contact in
            Section(header: Text(contact.fullName)) {
                ContactRowView(contact: contact)
            }
        }
    }
}

struct ContactsSectionView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsSectionView(contacts: Person.getPersons())
    }
}
