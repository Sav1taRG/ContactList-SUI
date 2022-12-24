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
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            ContactRowView(contact: contact)
            Spacer()
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
