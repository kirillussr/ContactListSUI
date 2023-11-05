//
//  ContactRowView.swift
//  ContactListSUI
//
//  Created by Кирилл on 31.10.2023.
//

import SwiftUI

struct ContactRowView: View {
    
    let text: String
    let sistemImage: String?
    
    var body: some View {
        HStack {
            if let imageName = sistemImage {
                Image(systemName: imageName)
                    .foregroundColor(.blue)
            }
            Text(text)
            Spacer()
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(text: "full name", sistemImage: "person.fill")
    }
}
