//
//  PersonDetailsView.swift
//  ContactListSUI
//
//  Created by Кирилл on 28.10.2023.
//

import SwiftUI

struct PersonDetailsView: View {
    
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.self) { person in
            Section {
                ContactRowView(text: "\(person.phone)", sistemImage: "phone")
                ContactRowView(text: "\(person.email)", sistemImage: "tray")
            } header: {
                Text("\(person.fullName)")
            }
        }
    }
}

struct PersonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailsView(persons: Person.getContsctList())
    }
}
