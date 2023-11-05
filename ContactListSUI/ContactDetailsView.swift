//
//  ContactDetailsView.swift
//  ContactListSUI
//
//  Created by Кирилл on 28.10.2023.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                    Spacer()
                }
                .padding()
                ContactRowView(text: "\(person.phone)", sistemImage: "phone")
                ContactRowView(text: "\(person.email)", sistemImage: "tray")
            }
            .navigationTitle("\(person.fullName)")
        }
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.generateRandomPerson())
    }
}
