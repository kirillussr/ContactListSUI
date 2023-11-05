//
//  ContactListView.swift
//  ContactListSUI
//
//  Created by Кирилл on 28.10.2023.
//

import SwiftUI

struct ContactListView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.self) { person in
            NavigationLink(destination: ContactDetailsView(person: person)) {
                ContactRowView(text: person.fullName, sistemImage: nil)
            }
        }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(persons: Person.getContsctList())
    }
}
