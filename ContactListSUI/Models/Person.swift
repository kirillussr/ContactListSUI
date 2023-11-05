//
//  Person.swift
//  ContactListSUI
//
//  Created by Кирилл on 28.10.2023.
//

import Foundation

struct Person: Hashable {
   
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    
    static func getContsctList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surname = DataStore.shared.surnames.shuffled()
        let phones = DataStore.shared.phones.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surname.count,
            phones.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surname[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
    
    static func generateRandomPerson() -> Person {
        Person(
            name: DataStore.shared.names.randomElement() ?? "",
            surname: DataStore.shared.surnames.randomElement() ?? "",
            phone: DataStore.shared.phones.randomElement() ?? "",
            email: DataStore.shared.emails.randomElement() ?? ""
        )
    }
}
