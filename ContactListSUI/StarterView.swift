//
//  StarterView.swift
//  ContactListSUI
//
//  Created by Кирилл on 28.10.2023.
//

import SwiftUI

struct StarterView: View {
    
    private let persons = Person.getContsctList()
    
    var body: some View {
        
        TabView {
            ContactListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("Contacts")
                }
            
            PersonDetailsView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
    }
}
