//
//  ContactRowView.swift
//  ContactList SUI
//
//  Created by Roman Golubinko on 24.12.2022.
//

import SwiftUI

struct ContactRowView: View {
    let contact: Person
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image(systemName: "phone")
                Text("\(contact.phoneNumber)")
            }
            Divider()
            HStack {
                Image(systemName: "envelope")
                Text("\(contact.email)")
            }
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(contact: Person(id: 1, firstName: "Test", lastName: "Test", phoneNumber: "12456", email: "a@a.com"))
    }
}
