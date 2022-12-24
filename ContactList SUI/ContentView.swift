//
//  ContentView.swift
//  ContactList SUI
//
//  Created by Roman Golubinko on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var persons: [Person] = Person.getPersons()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactsView(contacts: persons)
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Contacts")
                    }
                ContactsSectionView(contacts: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contacts List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
