//
//  DataStore.swift
//  ContactListSUI
//
//  Created by Кирилл on 28.10.2023.
//

import Foundation

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Marty",
        "Sid",
        "Kurt",
        "Mike",
        "Sem",
        "Lin",
        "Martin",
        "Zik",
        "Poul",
        "Ros"
    ]
    let surnames = [
        "Mcfly",
        "Vishec",
        "Kobein",
        "Nolan",
        "Linden",
        "Iden",
        "Woker",
        "Gross",
        "Freid",
        "Cuper"
    ]
    let phones = [
        "000000",
        "111111",
        "222222",
        "333333",
        "444444",
        "555555",
        "666666",
        "777777",
        "888888",
        "999999"
    ]
    let emails = [
        "qq@mail.com",
        "ww@mail.com",
        "aa@mail.com",
        "ss@mail.com",
        "gg@mail.com",
        "oo@mail.com",
        "vv@mail.com",
        "ff@mail.com",
        "xx@mail.com",
        "zz@mail.com"
    ]
    
    private init(){}
}
