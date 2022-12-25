//
//  DetailsView.swift
//  ContactList SUI
//
//  Created by Roman Golubinko on 24.12.2022.
//

import SwiftUI

struct DetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            Label(contact.phoneNumber, systemImage: "phone")
            Label(contact.email, systemImage: "envelope")
        }
        .navigationTitle(contact.fullName)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Person(id: 1, firstName: "Test", lastName: "Test", phoneNumber: "234124", email: "2@mal.cd"))
    }
}
